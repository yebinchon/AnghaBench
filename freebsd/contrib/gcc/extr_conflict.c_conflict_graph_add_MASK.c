#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct conflict_graph_arc_def {int smaller; int larger; } ;
typedef  TYPE_1__* conflict_graph_arc ;
typedef  TYPE_2__* conflict_graph ;
struct TYPE_6__ {TYPE_1__** neighbor_heads; int /*<<< orphan*/  arc_obstack; int /*<<< orphan*/  arc_hash_table; } ;
struct TYPE_5__ {int smaller; int larger; struct TYPE_5__* larger_next; struct TYPE_5__* smaller_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void** FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 

int
FUNC5 (conflict_graph graph, int reg1, int reg2)
{
  int smaller = FUNC1 (reg1, reg2);
  int larger = FUNC0 (reg1, reg2);
  struct conflict_graph_arc_def dummy;
  conflict_graph_arc arc;
  void **slot;

  /* A reg cannot conflict with itself.  */
  FUNC2 (reg1 != reg2);

  dummy.smaller = smaller;
  dummy.larger = larger;
  slot = FUNC3 (graph->arc_hash_table, (void *) &dummy, INSERT);
  
  /* If the conflict is already there, do nothing.  */
  if (*slot != NULL)
    return 0;

  /* Allocate an arc.  */
  arc
    = FUNC4 (&graph->arc_obstack,
		     sizeof (struct conflict_graph_arc_def));
  
  /* Record the reg numbers.  */
  arc->smaller = smaller;
  arc->larger = larger;

  /* Link the conflict into two lists, one for each reg.  */
  arc->smaller_next = graph->neighbor_heads[smaller];
  graph->neighbor_heads[smaller] = arc;
  arc->larger_next = graph->neighbor_heads[larger];
  graph->neighbor_heads[larger] = arc;

  /* Put it in the hash table.  */
  *slot = (void *) arc;

  return 1;
}