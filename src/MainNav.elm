module MainNav exposing (..)

import Html as HtmlUnstyled
import Html.Styled as Html exposing (..)
import Html.Styled.Attributes as Attrs exposing (..)
import Html.Styled.Events as Evt exposing (..)
import Navigation


main : Program Never Model Msg
main =
    Navigation.program UrlChange
        { init = init
        , view = toUnstyled << view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    {}


init : Navigation.Location -> ( Model, Cmd Msg )
init location =
    ( {}
    , Cmd.none
    )



-- UPDATE


type Msg
    = UrlChange Navigation.Location


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( {}, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h1 [] []
        , button [] [ text "hello world" ]
        ]
