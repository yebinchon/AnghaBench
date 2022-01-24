#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ddg_ptr ;
typedef  TYPE_3__* ddg_edge_ptr ;
struct TYPE_8__ {struct TYPE_8__* next_in; struct TYPE_8__* next_out; } ;
struct TYPE_7__ {int num_nodes; TYPE_1__* nodes; } ;
struct TYPE_6__ {TYPE_3__* in; TYPE_3__* out; int /*<<< orphan*/  insn; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3 (FILE *file, ddg_ptr g)
{
  int i;

  for (i = 0; i < g->num_nodes; i++)
    {
      ddg_edge_ptr e;

      FUNC2 (file, g->nodes[i].insn);
      FUNC0 (file, "OUT ARCS: ");
      for (e = g->nodes[i].out; e; e = e->next_out)
	FUNC1 (file, e);

      FUNC0 (file, "\nIN ARCS: ");
      for (e = g->nodes[i].in; e; e = e->next_in)
	FUNC1 (file, e);

      FUNC0 (file, "\n");
    }
}