#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfs_server {TYPE_2__* nfs_client; } ;
struct nfs_fh {scalar_t__ size; } ;
struct nfs_fattr {int valid; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; int /*<<< orphan*/  d_name; struct inode* d_inode; } ;
struct TYPE_8__ {int (* lookup ) (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *,struct nfs_fh*,struct nfs_fattr*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  client; } ;
struct TYPE_6__ {TYPE_1__* rpc_ops; } ;
struct TYPE_5__ {int (* getattr ) (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ;} ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int NFS_ATTR_FATTR ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 struct nfs_server* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct dentry* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ,struct nfs_fh*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *,struct nfs_fh*,struct nfs_fattr*) ; 
 int FUNC14 (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ; 

int FUNC15(struct dentry *dentry, struct nfs_fh *fhandle,
				struct nfs_fattr *fattr)
{
	struct dentry *parent = FUNC7(dentry);
	struct inode *dir = parent->d_inode;
	struct inode *inode;
	int error = -EACCES;

	FUNC6(dentry);

	/* We may have been initialized further down */
	if (dentry->d_inode)
		goto out;
	if (fhandle->size == 0) {
		error = FUNC1(dir)->lookup(FUNC3(dir)->client, dir, &dentry->d_name, fhandle, fattr);
		if (error)
			goto out_error;
	}
	FUNC12(dentry, FUNC11(dir));
	if (!(fattr->valid & NFS_ATTR_FATTR)) {
		struct nfs_server *server = FUNC2(dentry->d_sb);
		error = server->nfs_client->rpc_ops->getattr(server, fhandle, fattr);
		if (error < 0)
			goto out_error;
	}
	inode = FUNC9(dentry->d_sb, fhandle, fattr);
	error = FUNC4(inode);
	if (FUNC0(inode))
		goto out_error;
	FUNC5(dentry, inode);
out:
	FUNC8(parent);
	return 0;
out_error:
	FUNC10(dir);
	FUNC8(parent);
	return error;
}