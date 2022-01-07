
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Token ;
typedef int Boolean ;


 scalar_t__ CondF (int ) ;
 int CondPushBack (scalar_t__) ;
 scalar_t__ CondToken (int ) ;
 int FALSE ;
 scalar_t__ TOK_ERROR ;
 scalar_t__ TOK_FALSE ;
 scalar_t__ TOK_OR ;

__attribute__((used)) static Token
CondE(Boolean doEval)
{
    Token l, o;

    l = CondF(doEval);
    if (l != TOK_ERROR) {
 o = CondToken(doEval);

 if (o == TOK_OR) {
     if (l == TOK_FALSE) {
  l = CondE(doEval);
     } else {
  (void)CondE(FALSE);
     }
 } else {



     CondPushBack(o);
 }
    }
    return (l);
}
