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
struct nfs_inode {scalar_t__ change_attr; int cache_validity; scalar_t__ npages; } ;
struct nfs_fattr {int valid; scalar_t__ pre_change_attr; scalar_t__ change_attr; int /*<<< orphan*/  size; int /*<<< orphan*/  pre_size; int /*<<< orphan*/  mtime; int /*<<< orphan*/  pre_mtime; int /*<<< orphan*/  ctime; int /*<<< orphan*/  pre_ctime; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; } ;

/* Variables and functions */
 int NFS_ATTR_FATTR_CHANGE ; 
 int NFS_ATTR_FATTR_CTIME ; 
 int NFS_ATTR_FATTR_MTIME ; 
 int NFS_ATTR_FATTR_PRECHANGE ; 
 int NFS_ATTR_FATTR_PRECTIME ; 
 int NFS_ATTR_FATTR_PREMTIME ; 
 int NFS_ATTR_FATTR_PRESIZE ; 
 int NFS_ATTR_FATTR_SIZE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 unsigned long NFS_INO_INVALID_ATTR ; 
 int NFS_INO_INVALID_DATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC8(struct inode *inode, struct nfs_fattr *fattr)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	unsigned long ret = 0;

	if ((fattr->valid & NFS_ATTR_FATTR_PRECHANGE)
			&& (fattr->valid & NFS_ATTR_FATTR_CHANGE)
			&& nfsi->change_attr == fattr->pre_change_attr) {
		nfsi->change_attr = fattr->change_attr;
		if (FUNC1(inode->i_mode))
			nfsi->cache_validity |= NFS_INO_INVALID_DATA;
		ret |= NFS_INO_INVALID_ATTR;
	}
	/* If we have atomic WCC data, we may update some attributes */
	if ((fattr->valid & NFS_ATTR_FATTR_PRECTIME)
			&& (fattr->valid & NFS_ATTR_FATTR_CTIME)
			&& FUNC7(&inode->i_ctime, &fattr->pre_ctime)) {
		FUNC4(&inode->i_ctime, &fattr->ctime, sizeof(inode->i_ctime));
		ret |= NFS_INO_INVALID_ATTR;
	}

	if ((fattr->valid & NFS_ATTR_FATTR_PREMTIME)
			&& (fattr->valid & NFS_ATTR_FATTR_MTIME)
			&& FUNC7(&inode->i_mtime, &fattr->pre_mtime)) {
		FUNC4(&inode->i_mtime, &fattr->mtime, sizeof(inode->i_mtime));
		if (FUNC1(inode->i_mode))
			nfsi->cache_validity |= NFS_INO_INVALID_DATA;
		ret |= NFS_INO_INVALID_ATTR;
	}
	if ((fattr->valid & NFS_ATTR_FATTR_PRESIZE)
			&& (fattr->valid & NFS_ATTR_FATTR_SIZE)
			&& FUNC2(inode) == FUNC6(fattr->pre_size)
			&& nfsi->npages == 0) {
		FUNC3(inode, FUNC6(fattr->size));
		ret |= NFS_INO_INVALID_ATTR;
	}

	if (nfsi->cache_validity & NFS_INO_INVALID_DATA)
		FUNC5(inode);

	return ret;
}