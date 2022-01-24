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
struct nfs_server {int dummy; } ;
struct nfs_inode {int cache_validity; } ;
struct inode {int dummy; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int NFS_INO_REVAL_PAGECACHE ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int O_DIRECT ; 
 int FUNC2 (struct nfs_server*,struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct nfs_server *server = FUNC1(inode);
	struct nfs_inode *nfsi = FUNC0(inode);

	if (FUNC4(inode))
		goto out_noreval;

	if (filp->f_flags & O_DIRECT)
		goto force_reval;
	if (nfsi->cache_validity & NFS_INO_REVAL_PAGECACHE)
		goto force_reval;
	if (FUNC3(inode))
		goto force_reval;
out_noreval:
	return 0;
force_reval:
	return FUNC2(server, inode);
}