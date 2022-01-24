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
typedef  TYPE_1__* conflict_graph ;
struct TYPE_4__ {struct TYPE_4__* neighbor_heads; int /*<<< orphan*/  arc_hash_table; int /*<<< orphan*/  arc_obstack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3 (conflict_graph graph)
{
  FUNC2 (&graph->arc_obstack, NULL);
  FUNC1 (graph->arc_hash_table);
  FUNC0 (graph->neighbor_heads);
  FUNC0 (graph);
}