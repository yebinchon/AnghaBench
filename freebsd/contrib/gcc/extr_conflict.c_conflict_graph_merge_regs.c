
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* conflict_graph_arc ;
typedef TYPE_2__* conflict_graph ;
struct TYPE_6__ {TYPE_1__** neighbor_heads; } ;
struct TYPE_5__ {int smaller; int larger; struct TYPE_5__* larger_next; struct TYPE_5__* smaller_next; } ;


 int conflict_graph_add (TYPE_2__*,int,int) ;

void
conflict_graph_merge_regs (conflict_graph graph, int target, int src)
{
  conflict_graph_arc arc = graph->neighbor_heads[src];

  if (target == src)
    return;

  while (arc != ((void*)0))
    {
      int other = arc->smaller;

      if (other == src)
 other = arc->larger;

      conflict_graph_add (graph, target, other);



      if (src < arc->larger)
 arc = arc->smaller_next;
      else
 arc = arc->larger_next;
    }
}
