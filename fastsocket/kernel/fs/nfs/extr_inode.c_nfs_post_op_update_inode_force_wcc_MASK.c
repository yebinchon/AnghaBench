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
struct nfs_fattr {int valid; int /*<<< orphan*/  pre_size; int /*<<< orphan*/  pre_mtime; int /*<<< orphan*/  pre_ctime; int /*<<< orphan*/  pre_change_attr; } ;
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; } ;
struct TYPE_2__ {int /*<<< orphan*/  change_attr; } ;

/* Variables and functions */
 int NFS_ATTR_FATTR ; 
 int NFS_ATTR_FATTR_CHANGE ; 
 int NFS_ATTR_FATTR_CTIME ; 
 int NFS_ATTR_FATTR_MTIME ; 
 int NFS_ATTR_FATTR_PRECHANGE ; 
 int NFS_ATTR_FATTR_PRECTIME ; 
 int NFS_ATTR_FATTR_PREMTIME ; 
 int NFS_ATTR_FATTR_PRESIZE ; 
 int NFS_ATTR_FATTR_SIZE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct nfs_fattr*) ; 
 int FUNC4 (struct inode*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct inode *inode, struct nfs_fattr *fattr)
{
	int status;

	FUNC5(&inode->i_lock);
	/* Don't do a WCC update if these attributes are already stale */
	if ((fattr->valid & NFS_ATTR_FATTR) == 0 ||
			!FUNC3(inode, fattr)) {
		fattr->valid &= ~(NFS_ATTR_FATTR_PRECHANGE
				| NFS_ATTR_FATTR_PRESIZE
				| NFS_ATTR_FATTR_PREMTIME
				| NFS_ATTR_FATTR_PRECTIME);
		goto out_noforce;
	}
	if ((fattr->valid & NFS_ATTR_FATTR_CHANGE) != 0 &&
			(fattr->valid & NFS_ATTR_FATTR_PRECHANGE) == 0) {
		fattr->pre_change_attr = FUNC0(inode)->change_attr;
		fattr->valid |= NFS_ATTR_FATTR_PRECHANGE;
	}
	if ((fattr->valid & NFS_ATTR_FATTR_CTIME) != 0 &&
			(fattr->valid & NFS_ATTR_FATTR_PRECTIME) == 0) {
		FUNC2(&fattr->pre_ctime, &inode->i_ctime, sizeof(fattr->pre_ctime));
		fattr->valid |= NFS_ATTR_FATTR_PRECTIME;
	}
	if ((fattr->valid & NFS_ATTR_FATTR_MTIME) != 0 &&
			(fattr->valid & NFS_ATTR_FATTR_PREMTIME) == 0) {
		FUNC2(&fattr->pre_mtime, &inode->i_mtime, sizeof(fattr->pre_mtime));
		fattr->valid |= NFS_ATTR_FATTR_PREMTIME;
	}
	if ((fattr->valid & NFS_ATTR_FATTR_SIZE) != 0 &&
			(fattr->valid & NFS_ATTR_FATTR_PRESIZE) == 0) {
		fattr->pre_size = FUNC1(inode);
		fattr->valid |= NFS_ATTR_FATTR_PRESIZE;
	}
out_noforce:
	status = FUNC4(inode, fattr);
	FUNC6(&inode->i_lock);
	return status;
}