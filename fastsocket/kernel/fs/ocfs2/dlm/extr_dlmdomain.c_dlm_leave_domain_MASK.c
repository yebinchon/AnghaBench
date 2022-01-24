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
struct dlm_ctxt {int node_num; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  domain_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_DOMAIN_BACKOFF_MS ; 
 int ENOPROTOOPT ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 int O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dlm_ctxt*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct dlm_ctxt *dlm)
{
	int node, clear_node, status;

	/* At this point we've migrated away all our locks and won't
	 * accept mastership of new ones. The dlm is responsible for
	 * almost nothing now. We make sure not to confuse any joining
	 * nodes and then commence shutdown procedure. */

	FUNC5(&dlm->spinlock);
	/* Clear ourselves from the domain map */
	FUNC0(dlm->node_num, dlm->domain_map);
	while ((node = FUNC2(dlm->domain_map, O2NM_MAX_NODES,
				     0)) < O2NM_MAX_NODES) {
		/* Drop the dlm spinlock. This is safe wrt the domain_map.
		 * -nodes cannot be added now as the
		 *   query_join_handlers knows to respond with OK_NO_MAP
		 * -we catch the right network errors if a node is
		 *   removed from the map while we're sending him the
		 *   exit message. */
		FUNC6(&dlm->spinlock);

		clear_node = 1;

		status = FUNC1(dlm, node);
		if (status < 0 &&
		    status != -ENOPROTOOPT &&
		    status != -ENOTCONN) {
			FUNC3(ML_NOTICE, "Error %d sending domain exit message "
			     "to node %d\n", status, node);

			/* Not sure what to do here but lets sleep for
			 * a bit in case this was a transient
			 * error... */
			FUNC4(DLM_DOMAIN_BACKOFF_MS);
			clear_node = 0;
		}

		FUNC5(&dlm->spinlock);
		/* If we're not clearing the node bit then we intend
		 * to loop back around to try again. */
		if (clear_node)
			FUNC0(node, dlm->domain_map);
	}
	FUNC6(&dlm->spinlock);
}