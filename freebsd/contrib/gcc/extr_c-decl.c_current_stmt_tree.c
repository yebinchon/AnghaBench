
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * stmt_tree ;


 int c_stmt_tree ;

stmt_tree
current_stmt_tree (void)
{
  return &c_stmt_tree;
}
