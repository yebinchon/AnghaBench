#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rpc_cred {int dummy; } ;
typedef  struct rpc_cred nfs_open_dir_context ;
struct inode {int dummy; } ;
struct TYPE_12__ {TYPE_5__* mnt; TYPE_4__* dentry; } ;
struct file {TYPE_6__ f_path; struct rpc_cred* private_data; } ;
struct TYPE_11__ {TYPE_4__* mnt_root; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE ; 
 scalar_t__ FUNC0 (struct rpc_cred*) ; 
 int /*<<< orphan*/  NFSIOS_VFSOPEN ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct inode*) ; 
 struct rpc_cred* FUNC4 (struct inode*,struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_cred*) ; 
 struct rpc_cred* FUNC8 () ; 

__attribute__((used)) static int
FUNC9(struct inode *inode, struct file *filp)
{
	int res = 0;
	struct nfs_open_dir_context *ctx;
	struct rpc_cred *cred;

	FUNC5(FILE, "NFS: open dir(%s/%s)\n",
			filp->f_path.dentry->d_parent->d_name.name,
			filp->f_path.dentry->d_name.name);

	FUNC6(inode, NFSIOS_VFSOPEN);

	cred = FUNC8();
	if (FUNC0(cred))
		return FUNC2(cred);
	ctx = FUNC4(inode, cred);
	if (FUNC0(ctx)) {
		res = FUNC2(ctx);
		goto out;
	}
	filp->private_data = ctx;
	if (filp->f_path.dentry == filp->f_path.mnt->mnt_root) {
		/* This is a mountpoint, so d_revalidate will never
		 * have been called, so we need to refresh the
		 * inode (for close-open consistency) ourselves.
		 */
		FUNC3(FUNC1(inode), inode);
	}
out:
	FUNC7(cred);
	return res;
}