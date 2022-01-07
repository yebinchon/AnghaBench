
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {int dummy; } ;
struct loop {struct loop* inner; } ;


 int cancel_loop (struct loops*,struct loop*) ;

void
cancel_loop_tree (struct loops *loops, struct loop *loop)
{
  while (loop->inner)
    cancel_loop_tree (loops, loop->inner);
  cancel_loop (loops, loop);
}
