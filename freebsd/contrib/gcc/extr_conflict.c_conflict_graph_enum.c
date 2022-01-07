
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ (* conflict_graph_enum_fn ) (int ,int,void*) ;
typedef TYPE_1__* conflict_graph_arc ;
typedef TYPE_2__* conflict_graph ;
struct TYPE_5__ {TYPE_1__** neighbor_heads; } ;
struct TYPE_4__ {int larger; struct TYPE_4__* larger_next; struct TYPE_4__* smaller_next; int smaller; } ;


 scalar_t__ stub1 (int ,int,void*) ;

void
conflict_graph_enum (conflict_graph graph, int reg,
       conflict_graph_enum_fn enum_fn, void *extra)
{
  conflict_graph_arc arc = graph->neighbor_heads[reg];
  while (arc != ((void*)0))
    {

      if ((*enum_fn) (arc->smaller, arc->larger, extra))

 break;



      if (reg < arc->larger)
 arc = arc->smaller_next;
      else
 arc = arc->larger_next;
    }
}
