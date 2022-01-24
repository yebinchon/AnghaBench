#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq_res; } ;
struct TYPE_3__ {int /*<<< orphan*/  seq_args; } ;
struct nfs_commit_data {TYPE_2__ res; TYPE_1__ args; int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task, struct nfs_commit_data *data)
{
	if (FUNC1(FUNC0(data->inode),
				&data->args.seq_args,
				&data->res.seq_res,
				task))
		return;
	FUNC2(task);
}