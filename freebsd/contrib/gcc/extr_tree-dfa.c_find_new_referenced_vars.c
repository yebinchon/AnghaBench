
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int find_new_referenced_vars_1 ;
 int walk_tree (int *,int ,int *,int *) ;

void
find_new_referenced_vars (tree *stmt_p)
{
  walk_tree (stmt_p, find_new_referenced_vars_1, ((void*)0), ((void*)0));
}
