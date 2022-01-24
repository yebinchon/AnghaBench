#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nfs_server {TYPE_2__* nfs_client; } ;
struct nfs_fsinfo {int /*<<< orphan*/ * fattr; } ;
struct nfs_fh {int dummy; } ;
struct inode {int /*<<< orphan*/ * d_op; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;
struct TYPE_4__ {TYPE_1__* rpc_ops; } ;
struct TYPE_3__ {int (* getroot ) (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ;int /*<<< orphan*/ * dentry_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct nfs_server* FUNC3 (struct super_block*) ; 
 struct inode* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 struct inode* FUNC7 (struct super_block*,struct nfs_fh*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct super_block*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct inode*) ; 
 int FUNC11 (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ; 

struct dentry *FUNC12(struct super_block *sb, struct nfs_fh *mntfh)
{
	struct nfs_server *server = FUNC3(sb);
	struct nfs_fsinfo fsinfo;
	struct dentry *ret;
	struct inode *inode;
	int error;

	/* get the actual root for this mount */
	fsinfo.fattr = FUNC6();
	if (fsinfo.fattr == NULL)
		return FUNC1(-ENOMEM);

	error = server->nfs_client->rpc_ops->getroot(server, mntfh, &fsinfo);
	if (error < 0) {
		FUNC5("nfs_get_root: getattr error = %d\n", -error);
		ret = FUNC1(error);
		goto out;
	}

	inode = FUNC7(sb, mntfh, fsinfo.fattr);
	if (FUNC2(inode)) {
		FUNC5("nfs_get_root: get root inode failed\n");
		ret = FUNC0(inode);
		goto out;
	}

	error = FUNC9(sb, inode);
	if (error != 0) {
		ret = FUNC1(error);
		goto out;
	}

	/* root dentries normally start off anonymous and get spliced in later
	 * if the dentry tree reaches them; however if the dentry already
	 * exists, we'll pick it up at this point and use it as the root
	 */
	ret = FUNC4(inode);
	if (FUNC2(ret)) {
		FUNC5("nfs_get_root: get root dentry failed\n");
		goto out;
	}

	FUNC10(ret, inode);

	if (ret->d_op == NULL)
		ret->d_op = server->nfs_client->rpc_ops->dentry_ops;
out:
	FUNC8(fsinfo.fattr);
	return ret;
}