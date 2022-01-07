
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* constraint_graph_t ;
struct TYPE_5__ {int num_edges; } ;
struct TYPE_4__ {scalar_t__* succs; } ;


 scalar_t__ BITMAP_ALLOC (int *) ;
 unsigned int FIRST_REF_NODE ;
 int bitmap_bit_p (scalar_t__,unsigned int) ;
 int bitmap_set_bit (scalar_t__,unsigned int) ;
 int pta_obstack ;
 TYPE_2__ stats ;

__attribute__((used)) static bool
add_graph_edge (constraint_graph_t graph, unsigned int to,
  unsigned int from)
{
  if (to == from)
    {
      return 0;
    }
  else
    {
      bool r = 0;

      if (!graph->succs[from])
 graph->succs[from] = BITMAP_ALLOC (&pta_obstack);
      if (!bitmap_bit_p (graph->succs[from], to))
 {
   r = 1;
   if (to < FIRST_REF_NODE && from < FIRST_REF_NODE)
     stats.num_edges++;
   bitmap_set_bit (graph->succs[from], to);
 }
      return r;
    }
}
