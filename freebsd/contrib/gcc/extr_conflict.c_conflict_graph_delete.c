
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* conflict_graph ;
struct TYPE_4__ {struct TYPE_4__* neighbor_heads; int arc_hash_table; int arc_obstack; } ;


 int free (TYPE_1__*) ;
 int htab_delete (int ) ;
 int obstack_free (int *,int *) ;

void
conflict_graph_delete (conflict_graph graph)
{
  obstack_free (&graph->arc_obstack, ((void*)0));
  htab_delete (graph->arc_hash_table);
  free (graph->neighbor_heads);
  free (graph);
}
