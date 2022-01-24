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
struct task_struct {int dummy; } ;
struct nfs_client {int /*<<< orphan*/  cl_rpcclient; int /*<<< orphan*/  cl_count; int /*<<< orphan*/  cl_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  NFS4CLNT_MANAGER_RUNNING ; 
 int /*<<< orphan*/  RPC_DISPLAY_ADDR ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,struct nfs_client*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_client*) ; 
 int /*<<< orphan*/  nfs4_run_state_manager ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct nfs_client *clp)
{
	struct task_struct *task;

	if (FUNC8(NFS4CLNT_MANAGER_RUNNING, &clp->cl_state) != 0)
		return;
	FUNC1(THIS_MODULE);
	FUNC2(&clp->cl_count);
	task = FUNC3(nfs4_run_state_manager, clp, "%s-manager",
				FUNC7(clp->cl_rpcclient,
							RPC_DISPLAY_ADDR));
	if (!FUNC0(task))
		return;
	FUNC5(clp);
	FUNC6(clp);
	FUNC4(THIS_MODULE);
}