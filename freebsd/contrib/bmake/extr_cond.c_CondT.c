
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Token ;
typedef int Boolean ;


 scalar_t__ CondE (int ) ;
 scalar_t__ CondToken (int ) ;
 scalar_t__ TOK_EOF ;
 scalar_t__ TOK_ERROR ;
 scalar_t__ TOK_FALSE ;
 scalar_t__ TOK_LPAREN ;
 scalar_t__ TOK_NOT ;
 scalar_t__ TOK_RPAREN ;
 scalar_t__ TOK_TRUE ;

__attribute__((used)) static Token
CondT(Boolean doEval)
{
    Token t;

    t = CondToken(doEval);

    if (t == TOK_EOF) {




 t = TOK_ERROR;
    } else if (t == TOK_LPAREN) {



 t = CondE(doEval);
 if (t != TOK_ERROR) {
     if (CondToken(doEval) != TOK_RPAREN) {
  t = TOK_ERROR;
     }
 }
    } else if (t == TOK_NOT) {
 t = CondT(doEval);
 if (t == TOK_TRUE) {
     t = TOK_FALSE;
 } else if (t == TOK_FALSE) {
     t = TOK_TRUE;
 }
    }
    return (t);
}
