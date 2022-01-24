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
struct TYPE_2__ {int /*<<< orphan*/  cid; int /*<<< orphan*/  pid; } ;
union rr_control_msg {TYPE_1__ cli; int /*<<< orphan*/  cmd; } ;
struct msm_rpc_endpoint {int /*<<< orphan*/  list; int /*<<< orphan*/  read_q_wake_lock; int /*<<< orphan*/  cid; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPCROUTER_CTRL_CMD_REMOVE_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_rpc_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (union rr_control_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct msm_rpc_endpoint *ept)
{
	int rc;
	union rr_control_msg msg;

	msg.cmd = RPCROUTER_CTRL_CMD_REMOVE_CLIENT;
	msg.cli.pid = ept->pid;
	msg.cli.cid = ept->cid;

	FUNC0("x REMOVE_CLIENT id=%d:%08x\n", ept->pid, ept->cid);
	rc = FUNC3(&msg);
	if (rc < 0)
		return rc;

	FUNC4(&ept->read_q_wake_lock);
	FUNC2(&ept->list);
	FUNC1(ept);
	return 0;
}