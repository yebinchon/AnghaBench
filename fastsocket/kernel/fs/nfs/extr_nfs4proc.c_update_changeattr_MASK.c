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
struct nfs_inode {int cache_validity; scalar_t__ change_attr; } ;
struct nfs4_change_info {scalar_t__ before; scalar_t__ after; int /*<<< orphan*/  atomic; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int NFS_INO_INVALID_ATTR ; 
 int NFS_INO_INVALID_DATA ; 
 int NFS_INO_REVAL_PAGECACHE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct inode *dir, struct nfs4_change_info *cinfo)
{
	struct nfs_inode *nfsi = FUNC0(dir);

	FUNC3(&dir->i_lock);
	nfsi->cache_validity |= NFS_INO_INVALID_ATTR|NFS_INO_REVAL_PAGECACHE|NFS_INO_INVALID_DATA;
	if (!cinfo->atomic || cinfo->before != nfsi->change_attr)
		FUNC1(dir);
	nfsi->change_attr = cinfo->after;
	FUNC2(dir);
	FUNC4(&dir->i_lock);
}