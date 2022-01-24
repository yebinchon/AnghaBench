#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* constraint_graph_t ;
struct TYPE_4__ {scalar_t__* label; unsigned int size; int* eq_rep; } ;

/* Variables and functions */
 unsigned int FIRST_ADDR_NODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,unsigned int,int) ; 
 scalar_t__ FUNC2 (int,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC3 (constraint_graph_t graph,
		      unsigned int node, unsigned int label)
{
  /* If the address version of this variable is unused, we can
     substitute it for anything else with the same label.
     Otherwise, we know the pointers are equivalent, but not the
     locations.  */

  if (graph->label[FIRST_ADDR_NODE + node] == 0)
    {
      FUNC0 (label < graph->size);

      if (graph->eq_rep[label] != -1)
	{
	  /* Unify the two variables since we know they are equivalent.  */
	  if (FUNC2 (graph->eq_rep[label], node))
	    FUNC1 (graph, graph->eq_rep[label], node, false);
	  return graph->eq_rep[label];
	}
      else
	{
	  graph->eq_rep[label] = node;
	}
    }
  return node;
}