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
typedef  int /*<<< orphan*/  u8 ;
struct dlm_ctxt {int /*<<< orphan*/  dlm_reco_thread_wq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct dlm_ctxt *dlm, u8 node, int timeout)
{
	if (timeout) {
		FUNC1(0, "%s: waiting %dms for notification of "
		     "recovery of node %u\n", dlm->name, timeout, node);
		FUNC4(dlm->dlm_reco_thread_wq,
			   FUNC0(dlm, node),
			   FUNC2(timeout));
	} else {
		FUNC1(0, "%s: waiting indefinitely for notification "
		     "of recovery of node %u\n", dlm->name, node);
		FUNC3(dlm->dlm_reco_thread_wq,
			   FUNC0(dlm, node));
	}
	/* for now, return 0 */
	return 0;
}