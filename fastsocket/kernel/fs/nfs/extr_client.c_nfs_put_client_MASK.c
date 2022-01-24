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
struct nfs_client {int /*<<< orphan*/  cl_superblocks; int /*<<< orphan*/  cl_share_link; int /*<<< orphan*/  cl_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_client*) ; 
 int /*<<< orphan*/  nfs_client_lock ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct nfs_client *clp)
{
	if (!clp)
		return;

	FUNC3("--> nfs_put_client({%d})\n", FUNC2(&clp->cl_count));

	if (FUNC1(&clp->cl_count, &nfs_client_lock)) {
		FUNC4(&clp->cl_share_link);
		FUNC6(clp);
		FUNC8(&nfs_client_lock);

		FUNC0(!FUNC5(&clp->cl_superblocks));

		FUNC7(clp);
	}
}