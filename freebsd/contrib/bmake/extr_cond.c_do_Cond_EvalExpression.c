
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 int COND_INVALID ;
 int COND_PARSE ;
 int CondE (int ) ;
 int CondToken (int ) ;
 int FALSE ;
 int TOK_EOF ;



 int TRUE ;

__attribute__((used)) static int
do_Cond_EvalExpression(Boolean *value)
{

    switch (CondE(TRUE)) {
    case 128:
 if (CondToken(TRUE) == TOK_EOF) {
     *value = TRUE;
     return COND_PARSE;
 }
 break;
    case 129:
 if (CondToken(TRUE) == TOK_EOF) {
     *value = FALSE;
     return COND_PARSE;
 }
 break;
    default:
    case 130:
 break;
    }

    return COND_INVALID;
}
