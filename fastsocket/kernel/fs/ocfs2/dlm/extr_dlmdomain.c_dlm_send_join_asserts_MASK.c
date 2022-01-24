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
struct dlm_ctxt {int node_num; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  live_nodes_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_DOMAIN_BACKOFF_MS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int O2NM_MAX_NODES ; 
 int FUNC0 (struct dlm_ctxt*,int) ; 
 int FUNC1 (unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dlm_ctxt *dlm,
				  unsigned long *node_map)
{
	int status, node, live;

	status = 0;
	node = -1;
	while ((node = FUNC1(node_map, O2NM_MAX_NODES,
				     node + 1)) < O2NM_MAX_NODES) {
		if (node == dlm->node_num)
			continue;

		do {
			/* It is very important that this message be
			 * received so we spin until either the node
			 * has died or it gets the message. */
			status = FUNC0(dlm, node);

			FUNC4(&dlm->spinlock);
			live = FUNC6(node, dlm->live_nodes_map);
			FUNC5(&dlm->spinlock);

			if (status) {
				FUNC2(ML_ERROR, "Error return %d asserting "
				     "join on node %d\n", status, node);

				/* give us some time between errors... */
				if (live)
					FUNC3(DLM_DOMAIN_BACKOFF_MS);
			}
		} while (status && live);
	}
}