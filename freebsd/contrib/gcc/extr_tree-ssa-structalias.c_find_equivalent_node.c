
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* constraint_graph_t ;
struct TYPE_4__ {scalar_t__* label; unsigned int size; int* eq_rep; } ;


 unsigned int FIRST_ADDR_NODE ;
 int gcc_assert (int) ;
 int unify_nodes (TYPE_1__*,int,unsigned int,int) ;
 scalar_t__ unite (int,unsigned int) ;

__attribute__((used)) static unsigned int
find_equivalent_node (constraint_graph_t graph,
        unsigned int node, unsigned int label)
{





  if (graph->label[FIRST_ADDR_NODE + node] == 0)
    {
      gcc_assert (label < graph->size);

      if (graph->eq_rep[label] != -1)
 {

   if (unite (graph->eq_rep[label], node))
     unify_nodes (graph, graph->eq_rep[label], node, 0);
   return graph->eq_rep[label];
 }
      else
 {
   graph->eq_rep[label] = node;
 }
    }
  return node;
}
