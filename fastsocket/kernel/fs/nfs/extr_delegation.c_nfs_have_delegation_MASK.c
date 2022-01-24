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
struct nfs_delegation {int type; int /*<<< orphan*/  flags; } ;
struct inode {int dummy; } ;
typedef  int fmode_t ;
struct TYPE_2__ {int /*<<< orphan*/  delegation; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  NFS_DELEGATION_RETURNING ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_delegation*) ; 
 struct nfs_delegation* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct inode *inode, fmode_t flags)
{
	struct nfs_delegation *delegation;
	int ret = 0;

	flags &= FMODE_READ|FMODE_WRITE;
	FUNC3();
	delegation = FUNC2(FUNC0(inode)->delegation);
	if (delegation != NULL && (delegation->type & flags) == flags &&
	    !FUNC5(NFS_DELEGATION_RETURNING, &delegation->flags)) {
		FUNC1(delegation);
		ret = 1;
	}
	FUNC4();
	return ret;
}