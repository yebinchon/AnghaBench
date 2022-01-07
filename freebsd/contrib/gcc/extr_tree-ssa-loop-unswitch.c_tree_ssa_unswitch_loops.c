
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {int num; struct loop** parray; } ;
struct loop {scalar_t__ inner; } ;


 unsigned int TODO_cleanup_cfg ;
 int tree_unswitch_single_loop (struct loops*,struct loop*,int ) ;

unsigned int
tree_ssa_unswitch_loops (struct loops *loops)
{
  int i, num;
  struct loop *loop;
  bool changed = 0;


  num = loops->num;

  for (i = 1; i < num; i++)
    {

      loop = loops->parray[i];
      if (!loop)
 continue;

      if (loop->inner)
 continue;

      changed |= tree_unswitch_single_loop (loops, loop, 0);
    }

  if (changed)
    return TODO_cleanup_cfg;
  return 0;
}
