
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {unsigned int num; int state; struct loop** parray; } ;
struct loop {scalar_t__ latch; scalar_t__ header; } ;
typedef int edge ;


 int LOOPS_HAVE_SIMPLE_LATCHES ;
 int NULL_RTX ;
 int find_edge (scalar_t__,scalar_t__) ;
 int loop_split_edge_with (int ,int ) ;
 scalar_t__ single_succ_p (scalar_t__) ;

void
force_single_succ_latches (struct loops *loops)
{
  unsigned i;
  struct loop *loop;
  edge e;

  for (i = 1; i < loops->num; i++)
    {
      loop = loops->parray[i];
      if (loop->latch != loop->header && single_succ_p (loop->latch))
 continue;

      e = find_edge (loop->latch, loop->header);

      loop_split_edge_with (e, NULL_RTX);
    }
  loops->state |= LOOPS_HAVE_SIMPLE_LATCHES;
}
