
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int * add_stmt (int ) ;
 int c_process_expr_stmt (int *) ;

tree
c_finish_expr_stmt (tree expr)
{
  if (expr)
    return add_stmt (c_process_expr_stmt (expr));
  else
    return ((void*)0);
}
