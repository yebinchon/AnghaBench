#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_sb; TYPE_1__ d_name; struct dentry* d_parent; int /*<<< orphan*/  d_op; } ;
struct TYPE_6__ {int (* lookup ) (int /*<<< orphan*/ ,struct inode*,TYPE_1__*,struct nfs_fh*,struct nfs_fattr*) ;int /*<<< orphan*/  dentry_ops; } ;
struct TYPE_5__ {scalar_t__ namelen; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  NFSIOS_VFSLOOKUP ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct nfs_fattr* FUNC8 () ; 
 struct nfs_fh* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 struct inode* FUNC11 (int /*<<< orphan*/ ,struct nfs_fh*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_fh*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct inode*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct dentry*) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct inode*,TYPE_1__*,struct nfs_fh*,struct nfs_fattr*) ; 

__attribute__((used)) static struct dentry *FUNC20(struct inode *dir, struct dentry * dentry, struct nameidata *nd)
{
	struct dentry *res;
	struct dentry *parent;
	struct inode *inode = NULL;
	struct nfs_fh *fhandle = NULL;
	struct nfs_fattr *fattr = NULL;
	int error;

	FUNC6(VFS, "NFS: lookup(%s/%s)\n",
		dentry->d_parent->d_name.name, dentry->d_name.name);
	FUNC14(dir, NFSIOS_VFSLOOKUP);

	res = FUNC0(-ENAMETOOLONG);
	if (dentry->d_name.len > FUNC3(dir)->namelen)
		goto out;

	dentry->d_op = FUNC2(dir)->dentry_ops;

	/*
	 * If we're doing an exclusive create, optimize away the lookup
	 * but don't hash the dentry.
	 */
	if (FUNC15(dir, nd)) {
		FUNC4(dentry, NULL);
		res = NULL;
		goto out;
	}

	res = FUNC0(-ENOMEM);
	fhandle = FUNC9();
	fattr = FUNC8();
	if (fhandle == NULL || fattr == NULL)
		goto out;

	parent = dentry->d_parent;
	/* Protect against concurrent sillydeletes */
	FUNC10(parent);
	error = FUNC2(dir)->lookup(FUNC3(dir)->client, dir, &dentry->d_name, fhandle, fattr);
	if (error == -ENOENT)
		goto no_entry;
	if (error < 0) {
		res = FUNC0(error);
		goto out_unblock_sillyrename;
	}
	inode = FUNC11(dentry->d_sb, fhandle, fattr);
	res = (struct dentry *)inode;
	if (FUNC1(res))
		goto out_unblock_sillyrename;

	/* Success: notify readdir to use READDIRPLUS */
	FUNC7(dir);

no_entry:
	res = FUNC5(dentry, inode);
	if (res != NULL) {
		if (FUNC1(res))
			goto out_unblock_sillyrename;
		dentry = res;
	}
	FUNC17(dentry, FUNC16(dir));
out_unblock_sillyrename:
	FUNC18(parent);
out:
	FUNC12(fattr);
	FUNC13(fhandle);
	return res;
}