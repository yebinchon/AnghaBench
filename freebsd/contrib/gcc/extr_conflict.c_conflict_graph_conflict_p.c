
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct conflict_graph_arc_def {int larger; int smaller; } ;
typedef TYPE_1__* conflict_graph ;
struct TYPE_3__ {int arc_hash_table; } ;


 int MAX (int,int) ;
 int MIN (int,int) ;
 int * htab_find (int ,void*) ;

int
conflict_graph_conflict_p (conflict_graph graph, int reg1, int reg2)
{

  struct conflict_graph_arc_def arc;
  arc.smaller = MIN (reg1, reg2);
  arc.larger = MAX (reg1, reg2);

  return htab_find (graph->arc_hash_table, (void *) &arc) != ((void*)0);
}
