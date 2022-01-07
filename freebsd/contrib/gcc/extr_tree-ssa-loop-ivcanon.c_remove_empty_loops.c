
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loops {TYPE_1__* tree_root; } ;
struct loop {struct loop* next; } ;
struct TYPE_2__ {struct loop* inner; } ;


 unsigned int TODO_cleanup_cfg ;
 int scev_reset () ;
 int try_remove_empty_loop (struct loop*,int*) ;

unsigned int
remove_empty_loops (struct loops *loops)
{
  bool changed = 0;
  struct loop *loop;

  for (loop = loops->tree_root->inner; loop; loop = loop->next)
    try_remove_empty_loop (loop, &changed);

  if (changed)
    {
      scev_reset ();
      return TODO_cleanup_cfg;
    }
  return 0;
}
