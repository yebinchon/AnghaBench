
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loops {int dummy; } ;
struct loop {struct loop* outer; } ;
struct TYPE_2__ {int src; } ;


 int fix_bb_placements (struct loops*,int ,int*) ;
 int fix_loop_placement (struct loop*) ;
 TYPE_1__* loop_preheader_edge (struct loop*) ;

__attribute__((used)) static void
fix_loop_placements (struct loops *loops, struct loop *loop,
       bool *irred_invalidated)
{
  struct loop *outer;

  while (loop->outer)
    {
      outer = loop->outer;
      if (!fix_loop_placement (loop))
 break;






      fix_bb_placements (loops, loop_preheader_edge (loop)->src,
    irred_invalidated);
      loop = outer;
    }
}
