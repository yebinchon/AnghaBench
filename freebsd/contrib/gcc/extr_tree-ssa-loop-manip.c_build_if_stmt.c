
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COND_EXPR ;
 int GOTO_EXPR ;
 int build1 (int ,int ,int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int void_type_node ;

__attribute__((used)) static tree
build_if_stmt (tree cond, tree then_label, tree else_label)
{
  return build3 (COND_EXPR, void_type_node,
   cond,
   build1 (GOTO_EXPR, void_type_node, then_label),
   build1 (GOTO_EXPR, void_type_node, else_label));
}
