
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {int latch; } ;
typedef int * basic_block ;


 int CDI_DOMINATORS ;
 scalar_t__ dominated_by_p (int ,int ,int *) ;
 int * first_dom_son (int ,int *) ;
 int flow_bb_inside_loop_p (struct loop const*,int *) ;
 int * next_dom_son (int ,int *) ;

__attribute__((used)) static void
fill_sons_in_loop (const struct loop *loop, basic_block bb,
     basic_block *tovisit, int *tv)
{
  basic_block son, postpone = ((void*)0);

  tovisit[(*tv)++] = bb;
  for (son = first_dom_son (CDI_DOMINATORS, bb);
       son;
       son = next_dom_son (CDI_DOMINATORS, son))
    {
      if (!flow_bb_inside_loop_p (loop, son))
 continue;

      if (dominated_by_p (CDI_DOMINATORS, loop->latch, son))
 {
   postpone = son;
   continue;
 }
      fill_sons_in_loop (loop, son, tovisit, tv);
    }

  if (postpone)
    fill_sons_in_loop (loop, postpone, tovisit, tv);
}
