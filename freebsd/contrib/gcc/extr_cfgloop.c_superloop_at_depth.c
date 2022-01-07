
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {struct loop** pred; scalar_t__ depth; } ;


 int gcc_assert (int) ;

struct loop *
superloop_at_depth (struct loop *loop, unsigned depth)
{
  gcc_assert (depth <= (unsigned) loop->depth);

  if (depth == (unsigned) loop->depth)
    return loop;

  return loop->pred[depth];
}
