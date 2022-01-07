
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum op_type { ____Placeholder_op_type } op_type ;
typedef enum filter_op_type { ____Placeholder_filter_op_type } filter_op_type ;
typedef enum filter_exp_type { ____Placeholder_filter_exp_type } filter_exp_type ;
typedef enum filter_cmp_type { ____Placeholder_filter_cmp_type } filter_cmp_type ;


 int FILTER_CMP_EQ ;
 int FILTER_CMP_GE ;
 int FILTER_CMP_GT ;
 int FILTER_CMP_LE ;
 int FILTER_CMP_LT ;
 int FILTER_CMP_NE ;
 int FILTER_CMP_NONE ;
 int FILTER_CMP_NOT_REGEX ;
 int FILTER_CMP_REGEX ;
 int FILTER_EXP_ADD ;
 int FILTER_EXP_AND ;
 int FILTER_EXP_DIV ;
 int FILTER_EXP_LSHIFT ;
 int FILTER_EXP_MOD ;
 int FILTER_EXP_MUL ;
 int FILTER_EXP_NONE ;
 int FILTER_EXP_NOT ;
 int FILTER_EXP_OR ;
 int FILTER_EXP_RSHIFT ;
 int FILTER_EXP_SUB ;
 int FILTER_EXP_XOR ;
 int FILTER_OP_AND ;
 int FILTER_OP_NOT ;
 int FILTER_OP_OR ;
 int OP_BOOL ;
 int OP_CMP ;
 int OP_EXP ;
 int OP_NONE ;
 int OP_NOT ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static enum op_type process_op(const char *token,
          enum filter_op_type *btype,
          enum filter_cmp_type *ctype,
          enum filter_exp_type *etype)
{
 *btype = FILTER_OP_NOT;
 *etype = FILTER_EXP_NONE;
 *ctype = FILTER_CMP_NONE;

 if (strcmp(token, "&&") == 0)
  *btype = FILTER_OP_AND;
 else if (strcmp(token, "||") == 0)
  *btype = FILTER_OP_OR;
 else if (strcmp(token, "!") == 0)
  return OP_NOT;

 if (*btype != FILTER_OP_NOT)
  return OP_BOOL;


 if (strcmp(token, "+") == 0) {
  *etype = FILTER_EXP_ADD;
 } else if (strcmp(token, "-") == 0) {
  *etype = FILTER_EXP_SUB;
 } else if (strcmp(token, "*") == 0) {
  *etype = FILTER_EXP_MUL;
 } else if (strcmp(token, "/") == 0) {
  *etype = FILTER_EXP_DIV;
 } else if (strcmp(token, "%") == 0) {
  *etype = FILTER_EXP_MOD;
 } else if (strcmp(token, ">>") == 0) {
  *etype = FILTER_EXP_RSHIFT;
 } else if (strcmp(token, "<<") == 0) {
  *etype = FILTER_EXP_LSHIFT;
 } else if (strcmp(token, "&") == 0) {
  *etype = FILTER_EXP_AND;
 } else if (strcmp(token, "|") == 0) {
  *etype = FILTER_EXP_OR;
 } else if (strcmp(token, "^") == 0) {
  *etype = FILTER_EXP_XOR;
 } else if (strcmp(token, "~") == 0)
  *etype = FILTER_EXP_NOT;

 if (*etype != FILTER_EXP_NONE)
  return OP_EXP;


 if (strcmp(token, "==") == 0)
  *ctype = FILTER_CMP_EQ;
 else if (strcmp(token, "!=") == 0)
  *ctype = FILTER_CMP_NE;
 else if (strcmp(token, "<") == 0)
  *ctype = FILTER_CMP_LT;
 else if (strcmp(token, ">") == 0)
  *ctype = FILTER_CMP_GT;
 else if (strcmp(token, "<=") == 0)
  *ctype = FILTER_CMP_LE;
 else if (strcmp(token, ">=") == 0)
  *ctype = FILTER_CMP_GE;
 else if (strcmp(token, "=~") == 0)
  *ctype = FILTER_CMP_REGEX;
 else if (strcmp(token, "!~") == 0)
  *ctype = FILTER_CMP_NOT_REGEX;
 else
  return OP_NONE;

 return OP_CMP;
}
