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
typedef  TYPE_1__* ddg_ptr ;
typedef  TYPE_1__* ddg_edge_ptr ;
struct TYPE_5__ {int num_nodes; scalar_t__ num_backarcs; struct TYPE_5__* nodes; struct TYPE_5__* backarcs; int /*<<< orphan*/  predecessors; int /*<<< orphan*/  successors; struct TYPE_5__* next_out; struct TYPE_5__* out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2 (ddg_ptr g)
{
  int i;

  if (!g)
    return;

  for (i = 0; i < g->num_nodes; i++)
    {
      ddg_edge_ptr e = g->nodes[i].out;

      while (e)
	{
	  ddg_edge_ptr next = e->next_out;

	  FUNC0 (e);
	  e = next;
	}
      FUNC1 (g->nodes[i].successors);
      FUNC1 (g->nodes[i].predecessors);
    }
  if (g->num_backarcs > 0)
    FUNC0 (g->backarcs);
  FUNC0 (g->nodes);
  FUNC0 (g);
}