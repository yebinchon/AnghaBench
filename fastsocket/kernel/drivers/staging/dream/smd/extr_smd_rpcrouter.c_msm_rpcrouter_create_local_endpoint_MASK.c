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
typedef  scalar_t__ uint32_t ;
struct rr_server {int pid; int /*<<< orphan*/  vers; int /*<<< orphan*/  prog; int /*<<< orphan*/  cid; } ;
struct msm_rpc_endpoint {int reply_pid; int dst_pid; int /*<<< orphan*/  list; int /*<<< orphan*/  incomplete; int /*<<< orphan*/  read_q_wake_lock; int /*<<< orphan*/  read_q_lock; int /*<<< orphan*/  read_q; int /*<<< orphan*/  wait_q; void* dst_vers; void* dst_prog; int /*<<< orphan*/  dst_cid; scalar_t__ dev; int /*<<< orphan*/  pid; scalar_t__ cid; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct msm_rpc_endpoint*,...) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPCROUTER_PID_LOCAL ; 
 int /*<<< orphan*/  WAKE_LOCK_SUSPEND ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct msm_rpc_endpoint* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  local_endpoints ; 
 int /*<<< orphan*/  local_endpoints_lock ; 
 int /*<<< orphan*/  FUNC8 (struct msm_rpc_endpoint*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ msm_rpcrouter_devno ; 
 struct rr_server* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

struct msm_rpc_endpoint *FUNC14(dev_t dev)
{
	struct msm_rpc_endpoint *ept;
	unsigned long flags;

	ept = FUNC6(sizeof(struct msm_rpc_endpoint), GFP_KERNEL);
	if (!ept)
		return NULL;
	FUNC8(ept, 0, sizeof(struct msm_rpc_endpoint));

	/* mark no reply outstanding */
	ept->reply_pid = 0xffffffff;

	ept->cid = (uint32_t) ept;
	ept->pid = RPCROUTER_PID_LOCAL;
	ept->dev = dev;

	if ((dev != msm_rpcrouter_devno) && (dev != FUNC3(0, 0))) {
		struct rr_server *srv;
		/*
		 * This is a userspace client which opened
		 * a program/ver devicenode. Bind the client
		 * to that destination
		 */
		srv = FUNC9(dev);
		/* TODO: bug? really? */
		FUNC0(!srv);

		ept->dst_pid = srv->pid;
		ept->dst_cid = srv->cid;
		ept->dst_prog = FUNC4(srv->prog);
		ept->dst_vers = FUNC4(srv->vers);

		FUNC1("Creating local ept %p @ %08x:%08x\n", ept, srv->prog, srv->vers);
	} else {
		/* mark not connected */
		ept->dst_pid = 0xffffffff;
		FUNC1("Creating a master local ept %p\n", ept);
	}

	FUNC5(&ept->wait_q);
	FUNC2(&ept->read_q);
	FUNC10(&ept->read_q_lock);
	FUNC13(&ept->read_q_wake_lock, WAKE_LOCK_SUSPEND, "rpc_read");
	FUNC2(&ept->incomplete);

	FUNC11(&local_endpoints_lock, flags);
	FUNC7(&ept->list, &local_endpoints);
	FUNC12(&local_endpoints_lock, flags);
	return ept;
}