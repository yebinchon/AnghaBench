
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COND_EXPR ;
 int EQ_EXPR ;
 int TREE_TYPE (int ) ;
 int boolean_type_node ;
 int build2 (int ,int ,int ,int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int cp_convert (int ,int ) ;
 int integer_zero_node ;

__attribute__((used)) static tree
ifnonnull (tree test, tree result)
{
  return build3 (COND_EXPR, TREE_TYPE (result),
   build2 (EQ_EXPR, boolean_type_node, test,
    cp_convert (TREE_TYPE (test), integer_zero_node)),
   cp_convert (TREE_TYPE (result), integer_zero_node),
   result);
}
