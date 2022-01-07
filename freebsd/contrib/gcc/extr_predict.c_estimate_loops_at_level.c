
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct loop {unsigned int num_nodes; TYPE_1__* latch; struct loop* inner; struct loop* next; } ;
typedef int edge ;
typedef int bitmap ;
typedef TYPE_2__* basic_block ;
struct TYPE_8__ {int back_edge; } ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {int succs; } ;


 scalar_t__ EDGE_COUNT (int ) ;
 TYPE_5__* EDGE_INFO (int ) ;
 int bitmap_set_bit (int ,int ) ;
 int free (TYPE_2__**) ;
 TYPE_2__** get_loop_body (struct loop*) ;
 int loop_latch_edge (struct loop*) ;
 int propagate_freq (struct loop*,int ) ;

__attribute__((used)) static void
estimate_loops_at_level (struct loop *first_loop, bitmap tovisit)
{
  struct loop *loop;

  for (loop = first_loop; loop; loop = loop->next)
    {
      edge e;
      basic_block *bbs;
      unsigned i;

      estimate_loops_at_level (loop->inner, tovisit);


      if (EDGE_COUNT (loop->latch->succs) > 0)
 {

   e = loop_latch_edge (loop);
   EDGE_INFO (e)->back_edge = 1;
       }

      bbs = get_loop_body (loop);
      for (i = 0; i < loop->num_nodes; i++)
 bitmap_set_bit (tovisit, bbs[i]->index);
      free (bbs);
      propagate_freq (loop, tovisit);
    }
}
