
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int ADDR_EXPR ;
 int INDIRECT_REF ;
 int NEGATE_EXPR ;
 int PREDECREMENT_EXPR ;
 int PREINCREMENT_EXPR ;
 int UNARY_PLUS_EXPR ;

__attribute__((used)) static int
ambi_op_p (enum tree_code code)
{
  return (code == INDIRECT_REF
   || code == ADDR_EXPR
   || code == UNARY_PLUS_EXPR
   || code == NEGATE_EXPR
   || code == PREINCREMENT_EXPR
   || code == PREDECREMENT_EXPR);
}
