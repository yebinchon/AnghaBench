#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct o2nm_node {int dummy; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  live_nodes_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct o2nm_node *node, int idx, void *data)
{
	struct dlm_ctxt *dlm = data;

	if (!FUNC0(dlm))
		return;

	FUNC3(&dlm->spinlock);
	FUNC2(idx, dlm->live_nodes_map);
	/* do NOT notify mle attached to the heartbeat events.
	 * new nodes are not interesting in mastery until joined. */
	FUNC4(&dlm->spinlock);

	FUNC1(dlm);
}