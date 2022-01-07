
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Token ;
struct TYPE_2__ {int doNot; int (* defProc ) (int ,char*) ;int * form; } ;
typedef void* Boolean ;


 int COND ;
 scalar_t__ CondCvtArg (char*,double*) ;
 char* CondGetString (void*,void**,void**,void*) ;
 scalar_t__ DEBUG (int ) ;
 void* FALSE ;
 int PARSE_WARNING ;
 int Parse_Error (int ,char*) ;
 int TOK_ERROR ;
 int TOK_FALSE ;
 int* condExpr ;
 int debug_file ;
 int fprintf (int ,char*,...) ;
 int free (void*) ;
 TYPE_1__* if_info ;
 scalar_t__ isspace (unsigned char) ;
 void* lhsStrict ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int stub1 (int ,char*) ;

__attribute__((used)) static Token
compare_expression(Boolean doEval)
{
    Token t;
    char *lhs;
    char *rhs;
    char *op;
    void *lhsFree;
    void *rhsFree;
    Boolean lhsQuoted;
    Boolean rhsQuoted;
    double left, right;

    t = TOK_ERROR;
    rhs = ((void*)0);
    lhsFree = rhsFree = FALSE;
    lhsQuoted = rhsQuoted = FALSE;





    lhs = CondGetString(doEval, &lhsQuoted, &lhsFree, lhsStrict);
    if (!lhs)
 goto done;




    while (isspace((unsigned char) *condExpr))
 condExpr++;






    op = condExpr;
    switch (*condExpr) {
 case '!':
 case '=':
 case '<':
 case '>':
     if (condExpr[1] == '=') {
  condExpr += 2;
     } else {
  condExpr += 1;
     }
     break;
 default:
     if (!doEval) {
  t = TOK_FALSE;
  goto done;
     }

     if (lhsQuoted) {
  t = lhs[0] != 0;
  goto done;
     }

     if (CondCvtArg(lhs, &left)) {
  t = left != 0.0;
  goto done;
     }

     if (if_info->form[0] == 0) {
  t = lhs[0] != 0;
  goto done;
     }

     t = if_info->defProc(strlen(lhs), lhs) != if_info->doNot;
     goto done;
    }

    while (isspace((unsigned char)*condExpr))
 condExpr++;

    if (*condExpr == '\0') {
 Parse_Error(PARSE_WARNING,
      "Missing right-hand-side of operator");
 goto done;
    }

    rhs = CondGetString(doEval, &rhsQuoted, &rhsFree, FALSE);
    if (!rhs)
 goto done;

    if (rhsQuoted || lhsQuoted) {
do_string_compare:
 if (((*op != '!') && (*op != '=')) || (op[1] != '=')) {
     Parse_Error(PARSE_WARNING,
    "String comparison operator should be either == or !=");
     goto done;
 }

 if (DEBUG(COND)) {
     fprintf(debug_file, "lhs = \"%s\", rhs = \"%s\", op = %.2s\n",
     lhs, rhs, op);
 }




 if (*op == '=') {
     t = strcmp(lhs, rhs) == 0;
 } else {
     t = strcmp(lhs, rhs) != 0;
 }
    } else {





 if (!CondCvtArg(lhs, &left) || !CondCvtArg(rhs, &right))
     goto do_string_compare;

 if (DEBUG(COND)) {
     fprintf(debug_file, "left = %f, right = %f, op = %.2s\n", left,
     right, op);
 }
 switch(op[0]) {
 case '!':
     if (op[1] != '=') {
  Parse_Error(PARSE_WARNING,
       "Unknown operator");
  goto done;
     }
     t = (left != right);
     break;
 case '=':
     if (op[1] != '=') {
  Parse_Error(PARSE_WARNING,
       "Unknown operator");
  goto done;
     }
     t = (left == right);
     break;
 case '<':
     if (op[1] == '=') {
  t = (left <= right);
     } else {
  t = (left < right);
     }
     break;
 case '>':
     if (op[1] == '=') {
  t = (left >= right);
     } else {
  t = (left > right);
     }
     break;
 }
    }

done:
    free(lhsFree);
    free(rhsFree);
    return t;
}
