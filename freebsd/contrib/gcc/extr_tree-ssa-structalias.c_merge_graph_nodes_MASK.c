#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* constraint_graph_t ;
struct TYPE_5__ {int* indirect_cycles; scalar_t__* succs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC3 (int) ; 
 int /*<<< orphan*/  pta_obstack ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC5 (unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC6 (constraint_graph_t graph, unsigned int to,
		   unsigned int from)
{
  if (graph->indirect_cycles[from] != -1)
    {
      /* If we have indirect cycles with the from node, and we have
	 none on the to node, the to node has indirect cycles from the
	 from node now that they are unified.
	 If indirect cycles exist on both, unify the nodes that they
	 are in a cycle with, since we know they are in a cycle with
	 each other.  */
      if (graph->indirect_cycles[to] == -1)
	{
	  graph->indirect_cycles[to] = graph->indirect_cycles[from];
	}
      else
	{
	  unsigned int tonode = FUNC3 (graph->indirect_cycles[to]);
	  unsigned int fromnode = FUNC3 (graph->indirect_cycles[from]);

	  if (FUNC5 (tonode, fromnode))
	    FUNC4 (graph, tonode, fromnode, true);
	}
    }

  /* Merge all the successor edges.  */
  if (graph->succs[from])
    {
      if (!graph->succs[to])
	graph->succs[to] = FUNC0 (&pta_obstack);
      FUNC1 (graph->succs[to],
		       graph->succs[from]);
    }

  FUNC2 (graph, from);
}