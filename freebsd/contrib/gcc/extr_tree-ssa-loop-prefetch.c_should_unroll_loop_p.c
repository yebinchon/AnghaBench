
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_niter_desc {int dummy; } ;
struct loop {int num_nodes; } ;


 int can_unroll_loop_p (struct loop*,unsigned int,struct tree_niter_desc*) ;

__attribute__((used)) static bool
should_unroll_loop_p (struct loop *loop, struct tree_niter_desc *desc,
        unsigned factor)
{
  if (!can_unroll_loop_p (loop, factor, desc))
    return 0;






  if (loop->num_nodes > 2)
    return 0;

  return 1;
}
