
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int BIT_NOT_EXPR ;
 int COMPONENT_REF ;
 int TRUTH_NOT_EXPR ;
 int TYPE_EXPR ;

__attribute__((used)) static int
unary_op_p (enum tree_code code)
{
  return (code == TRUTH_NOT_EXPR
   || code == BIT_NOT_EXPR
   || code == COMPONENT_REF
   || code == TYPE_EXPR);
}
