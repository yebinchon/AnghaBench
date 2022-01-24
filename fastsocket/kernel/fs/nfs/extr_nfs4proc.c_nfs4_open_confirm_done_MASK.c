#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_6__ {int /*<<< orphan*/  server; int /*<<< orphan*/  stateid; } ;
struct TYPE_4__ {int /*<<< orphan*/  stateid; } ;
struct nfs4_opendata {scalar_t__ rpc_status; int rpc_done; int /*<<< orphan*/  timestamp; TYPE_3__ o_res; TYPE_2__* owner; TYPE_1__ c_res; } ;
struct TYPE_5__ {int /*<<< orphan*/  so_seqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task, void *calldata)
{
	struct nfs4_opendata *data = calldata;

	data->rpc_status = task->tk_status;
	if (data->rpc_status == 0) {
		FUNC0(&data->o_res.stateid, &data->c_res.stateid);
		FUNC1(&data->owner->so_seqid, 0);
		FUNC2(data->o_res.server, data->timestamp);
		data->rpc_done = 1;
	}
}