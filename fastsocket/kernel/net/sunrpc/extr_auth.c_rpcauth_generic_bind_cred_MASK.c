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
struct rpc_task {int /*<<< orphan*/  tk_pid; } ;
struct rpc_cred {TYPE_2__* cr_auth; } ;
struct TYPE_4__ {TYPE_1__* au_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  au_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rpc_cred*) ; 
 struct rpc_cred* FUNC1 (struct rpc_cred*) ; 

struct rpc_cred *
FUNC2(struct rpc_task *task, struct rpc_cred *cred, int lookupflags)
{
	FUNC0("RPC: %5u holding %s cred %p\n", task->tk_pid,
			cred->cr_auth->au_ops->au_name, cred);
	return FUNC1(cred);
}