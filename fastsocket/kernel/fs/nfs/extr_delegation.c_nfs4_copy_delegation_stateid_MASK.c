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
struct nfs_inode {int /*<<< orphan*/  delegation; } ;
struct nfs_delegation {int type; int /*<<< orphan*/  stateid; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
typedef  int fmode_t ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_delegation*) ; 
 struct nfs_delegation* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

bool FUNC6(nfs4_stateid *dst, struct inode *inode,
		fmode_t flags)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	struct nfs_delegation *delegation;
	bool ret;

	flags &= FMODE_READ|FMODE_WRITE;
	FUNC4();
	delegation = FUNC3(nfsi->delegation);
	ret = (delegation != NULL && (delegation->type & flags) == flags);
	if (ret) {
		FUNC1(dst, &delegation->stateid);
		FUNC2(delegation);
	}
	FUNC5();
	return ret;
}