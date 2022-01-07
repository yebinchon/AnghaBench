
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* constraint_graph_t ;
struct TYPE_5__ {int num_implicit_edges; } ;
struct TYPE_4__ {scalar_t__* implicit_preds; } ;


 scalar_t__ BITMAP_ALLOC (int *) ;
 int bitmap_bit_p (scalar_t__,unsigned int) ;
 int bitmap_set_bit (scalar_t__,unsigned int) ;
 int predbitmap_obstack ;
 TYPE_2__ stats ;

__attribute__((used)) static void
add_implicit_graph_edge (constraint_graph_t graph, unsigned int to,
    unsigned int from)
{
  if (to == from)
    return;

  if (!graph->implicit_preds[to])
    graph->implicit_preds[to] = BITMAP_ALLOC (&predbitmap_obstack);

  if (!bitmap_bit_p (graph->implicit_preds[to], from))
    {
      stats.num_implicit_edges++;
      bitmap_set_bit (graph->implicit_preds[to], from);
    }
}
