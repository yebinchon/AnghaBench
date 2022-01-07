
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct conflict_graph_arc_def {int smaller; int larger; } ;
typedef TYPE_1__* conflict_graph_arc ;
typedef TYPE_2__* conflict_graph ;
struct TYPE_6__ {TYPE_1__** neighbor_heads; int arc_obstack; int arc_hash_table; } ;
struct TYPE_5__ {int smaller; int larger; struct TYPE_5__* larger_next; struct TYPE_5__* smaller_next; } ;


 int INSERT ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int gcc_assert (int) ;
 void** htab_find_slot (int ,void*,int ) ;
 TYPE_1__* obstack_alloc (int *,int) ;

int
conflict_graph_add (conflict_graph graph, int reg1, int reg2)
{
  int smaller = MIN (reg1, reg2);
  int larger = MAX (reg1, reg2);
  struct conflict_graph_arc_def dummy;
  conflict_graph_arc arc;
  void **slot;


  gcc_assert (reg1 != reg2);

  dummy.smaller = smaller;
  dummy.larger = larger;
  slot = htab_find_slot (graph->arc_hash_table, (void *) &dummy, INSERT);


  if (*slot != ((void*)0))
    return 0;


  arc
    = obstack_alloc (&graph->arc_obstack,
       sizeof (struct conflict_graph_arc_def));


  arc->smaller = smaller;
  arc->larger = larger;


  arc->smaller_next = graph->neighbor_heads[smaller];
  graph->neighbor_heads[smaller] = arc;
  arc->larger_next = graph->neighbor_heads[larger];
  graph->neighbor_heads[larger] = arc;


  *slot = (void *) arc;

  return 1;
}
