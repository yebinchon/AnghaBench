#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scc_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  direct_nodes; int /*<<< orphan*/  eq_rep; int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scc_info*) ; 
 TYPE_1__* graph ; 
 int /*<<< orphan*/  iteration_obstack ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct scc_info *si)
{
  FUNC2 (si);
  FUNC1 (graph->label);
  FUNC1 (graph->eq_rep);
  FUNC3 (graph->direct_nodes);
  FUNC0 (&iteration_obstack);
}