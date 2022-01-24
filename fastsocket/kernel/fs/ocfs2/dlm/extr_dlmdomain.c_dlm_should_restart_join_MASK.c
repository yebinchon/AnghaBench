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
struct domain_join_ctxt {int /*<<< orphan*/  live_map; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  live_nodes_map; } ;
typedef  enum dlm_query_join_response_code { ____Placeholder_dlm_query_join_response_code } dlm_query_join_response_code ;

/* Variables and functions */
 int JOIN_DISALLOW ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dlm_ctxt *dlm,
				   struct domain_join_ctxt *ctxt,
				   enum dlm_query_join_response_code response)
{
	int ret;

	if (response == JOIN_DISALLOW) {
		FUNC1(0, "Latest response of disallow -- should restart\n");
		return 1;
	}

	FUNC2(&dlm->spinlock);
	/* For now, we restart the process if the node maps have
	 * changed at all */
	ret = FUNC0(ctxt->live_map, dlm->live_nodes_map,
		     sizeof(dlm->live_nodes_map));
	FUNC3(&dlm->spinlock);

	if (ret)
		FUNC1(0, "Node maps changed -- should restart\n");

	return ret;
}