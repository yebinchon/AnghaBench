
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
struct ivopts_data {int current_loop; } ;
typedef int edge ;


 int * niter_for_exit (struct ivopts_data*,int ) ;
 int single_dom_exit (int ) ;

__attribute__((used)) static tree
niter_for_single_dom_exit (struct ivopts_data *data)
{
  edge exit = single_dom_exit (data->current_loop);

  if (!exit)
    return ((void*)0);

  return niter_for_exit (data, exit);
}
