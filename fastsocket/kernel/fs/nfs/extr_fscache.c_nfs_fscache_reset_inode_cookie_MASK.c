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
struct nfs_server {TYPE_1__* nfs_client; } ;
struct nfs_inode {struct fscache_cookie* fscache; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fscache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct nfs_server*,struct nfs_inode*,struct fscache_cookie*,struct fscache_cookie*) ; 
 struct fscache_cookie* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfs_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct fscache_cookie*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  nfs_fscache_inode_object_def ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

void FUNC7(struct inode *inode)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	struct nfs_server *nfss = FUNC1(inode);
	struct fscache_cookie *old = nfsi->fscache;

	FUNC5(inode);
	if (nfsi->fscache) {
		/* retire the current fscache cache and get a new one */
		FUNC4(nfsi->fscache, 1);

		nfsi->fscache = FUNC3(
			nfss->nfs_client->fscache,
			&nfs_fscache_inode_object_def,
			nfsi);

		FUNC2(FSCACHE,
			 "NFS: revalidation new cookie (0x%p/0x%p/0x%p/0x%p)\n",
			 nfss, nfsi, old, nfsi->fscache);
	}
	FUNC6(inode);
}