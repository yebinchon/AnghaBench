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
struct nfs_client {scalar_t__ cl_cons_state; int /*<<< orphan*/  cl_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4CLNT_MANAGER_RUNNING ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  nfs_wait_bit_killable ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct nfs_client *clp)
{
	int res;

	FUNC0();

	res = FUNC1(&clp->cl_state, NFS4CLNT_MANAGER_RUNNING,
			nfs_wait_bit_killable, TASK_KILLABLE);
	if (res)
		return res;

	if (clp->cl_cons_state < 0)
		return clp->cl_cons_state;
	return 0;
}