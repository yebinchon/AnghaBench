
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct ivopts_data {int dummy; } ;
typedef int bitmap ;


 struct ivopts_data* fd_ivopts_data ;
 int find_depends ;
 int force_expr_to_var_cost (int ) ;
 int walk_tree (int *,int ,int *,int *) ;

__attribute__((used)) static unsigned
force_var_cost (struct ivopts_data *data,
  tree expr, bitmap *depends_on)
{
  if (depends_on)
    {
      fd_ivopts_data = data;
      walk_tree (&expr, find_depends, depends_on, ((void*)0));
    }

  return force_expr_to_var_cost (expr);
}
