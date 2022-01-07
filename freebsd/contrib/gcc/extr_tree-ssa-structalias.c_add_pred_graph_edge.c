
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* constraint_graph_t ;
struct TYPE_3__ {scalar_t__* preds; } ;


 scalar_t__ BITMAP_ALLOC (int *) ;
 int bitmap_bit_p (scalar_t__,unsigned int) ;
 int bitmap_set_bit (scalar_t__,unsigned int) ;
 int predbitmap_obstack ;

__attribute__((used)) static void
add_pred_graph_edge (constraint_graph_t graph, unsigned int to,
       unsigned int from)
{
  if (!graph->preds[to])
    graph->preds[to] = BITMAP_ALLOC (&predbitmap_obstack);
  if (!bitmap_bit_p (graph->preds[to], from))
    bitmap_set_bit (graph->preds[to], from);
}
