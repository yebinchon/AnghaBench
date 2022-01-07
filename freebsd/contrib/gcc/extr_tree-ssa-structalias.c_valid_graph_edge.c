
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* constraint_graph_t ;
struct TYPE_3__ {scalar_t__* succs; } ;


 scalar_t__ bitmap_bit_p (scalar_t__,unsigned int) ;

__attribute__((used)) static bool
valid_graph_edge (constraint_graph_t graph, unsigned int src,
    unsigned int dest)
{
  return (graph->succs[dest]
   && bitmap_bit_p (graph->succs[dest], src));
}
