
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int GOTO_EXPR ;
 int add_stmt (int ) ;
 int build1 (int ,int ,int ) ;
 int convert (int ,int ) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int ptr_type_node ;
 int void_type_node ;

tree
c_finish_goto_ptr (tree expr)
{
  if (pedantic)
    pedwarn ("ISO C forbids %<goto *expr;%>");
  expr = convert (ptr_type_node, expr);
  return add_stmt (build1 (GOTO_EXPR, void_type_node, expr));
}
