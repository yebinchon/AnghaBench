
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* constraint_graph_t ;
struct TYPE_5__ {int* indirect_cycles; scalar_t__* succs; } ;


 scalar_t__ BITMAP_ALLOC (int *) ;
 int bitmap_ior_into (scalar_t__,scalar_t__) ;
 int clear_edges_for_node (TYPE_1__*,unsigned int) ;
 unsigned int find (int) ;
 int pta_obstack ;
 int unify_nodes (TYPE_1__*,unsigned int,unsigned int,int) ;
 scalar_t__ unite (unsigned int,unsigned int) ;

__attribute__((used)) static void
merge_graph_nodes (constraint_graph_t graph, unsigned int to,
     unsigned int from)
{
  if (graph->indirect_cycles[from] != -1)
    {






      if (graph->indirect_cycles[to] == -1)
 {
   graph->indirect_cycles[to] = graph->indirect_cycles[from];
 }
      else
 {
   unsigned int tonode = find (graph->indirect_cycles[to]);
   unsigned int fromnode = find (graph->indirect_cycles[from]);

   if (unite (tonode, fromnode))
     unify_nodes (graph, tonode, fromnode, 1);
 }
    }


  if (graph->succs[from])
    {
      if (!graph->succs[to])
 graph->succs[to] = BITMAP_ALLOC (&pta_obstack);
      bitmap_ior_into (graph->succs[to],
         graph->succs[from]);
    }

  clear_edges_for_node (graph, from);
}
