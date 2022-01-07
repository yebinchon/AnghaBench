
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niter_desc {int dummy; } ;
struct loop {int * aux; } ;


 int free (struct niter_desc*) ;
 struct niter_desc* simple_loop_desc (struct loop*) ;

void
free_simple_loop_desc (struct loop *loop)
{
  struct niter_desc *desc = simple_loop_desc (loop);

  if (!desc)
    return;

  free (desc);
  loop->aux = ((void*)0);
}
