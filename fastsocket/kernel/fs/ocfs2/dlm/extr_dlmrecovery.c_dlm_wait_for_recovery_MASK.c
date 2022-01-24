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
struct TYPE_2__ {int /*<<< orphan*/  event; int /*<<< orphan*/  dead_node; int /*<<< orphan*/  new_master; int /*<<< orphan*/  state; } ;
struct dlm_ctxt {TYPE_1__ reco; int /*<<< orphan*/  dlm_reco_thread_task; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct dlm_ctxt *dlm)
{
	if (FUNC0(dlm)) {
		FUNC1(0, "%s: reco thread %d in recovery: "
		     "state=%d, master=%u, dead=%u\n",
		     dlm->name, FUNC2(dlm->dlm_reco_thread_task),
		     dlm->reco.state, dlm->reco.new_master,
		     dlm->reco.dead_node);
	}
	FUNC3(dlm->reco.event, !FUNC0(dlm));
}