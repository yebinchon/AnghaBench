
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int edge_iterator ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_7__ {int preds; } ;
struct TYPE_6__ {int flags; } ;


 int EDGE_FAKE ;
 int ei_next (int *) ;
 TYPE_1__* ei_safe_edge (int ) ;
 int ei_start (int ) ;
 int remove_edge (TYPE_1__*) ;

__attribute__((used)) static void
remove_fake_predecessors (basic_block bb)
{
  edge e;
  edge_iterator ei;

  for (ei = ei_start (bb->preds); (e = ei_safe_edge (ei)); )
    {
      if ((e->flags & EDGE_FAKE) == EDGE_FAKE)
 remove_edge (e);
      else
 ei_next (&ei);
    }
}
