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
struct rpc_task {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock_context; int /*<<< orphan*/  context; int /*<<< orphan*/  stateid; int /*<<< orphan*/  seq_args; } ;
struct TYPE_5__ {int /*<<< orphan*/  seq_res; } ;
struct nfs_read_data {TYPE_3__ args; TYPE_2__ res; TYPE_1__* header; } ;
struct TYPE_4__ {int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 

__attribute__((used)) static void FUNC4(struct rpc_task *task, struct nfs_read_data *data)
{
	if (FUNC2(FUNC0(data->header->inode),
				&data->args.seq_args,
				&data->res.seq_res,
				task))
		return;
	FUNC3(task);
	FUNC1(&data->args.stateid, data->args.context,
			data->args.lock_context, FMODE_READ);
}