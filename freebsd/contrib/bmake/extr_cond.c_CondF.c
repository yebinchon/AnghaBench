
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Token ;
typedef int Boolean ;


 int CondPushBack (scalar_t__) ;
 scalar_t__ CondT (int ) ;
 scalar_t__ CondToken (int ) ;
 int FALSE ;
 scalar_t__ TOK_AND ;
 scalar_t__ TOK_ERROR ;
 scalar_t__ TOK_TRUE ;

__attribute__((used)) static Token
CondF(Boolean doEval)
{
    Token l, o;

    l = CondT(doEval);
    if (l != TOK_ERROR) {
 o = CondToken(doEval);

 if (o == TOK_AND) {







     if (l == TOK_TRUE) {
  l = CondF(doEval);
     } else {
  (void)CondF(FALSE);
     }
 } else {



     CondPushBack(o);
 }
    }
    return (l);
}
