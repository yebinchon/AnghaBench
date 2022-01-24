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
struct rpc_cred {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct file {int /*<<< orphan*/  f_mode; TYPE_1__ f_path; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct rpc_cred*) ; 
 int FUNC1 (struct rpc_cred*) ; 
 struct nfs_open_context* FUNC2 (int /*<<< orphan*/ ,struct rpc_cred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_cred*) ; 
 struct rpc_cred* FUNC7 () ; 

int FUNC8(struct inode *inode, struct file *filp)
{
	struct nfs_open_context *ctx;
	struct rpc_cred *cred;

	cred = FUNC7();
	if (FUNC0(cred))
		return FUNC1(cred);
	ctx = FUNC2(filp->f_path.dentry, cred, filp->f_mode);
	FUNC6(cred);
	if (ctx == NULL)
		return -ENOMEM;
	FUNC3(filp, ctx);
	FUNC5(ctx);
	FUNC4(inode, filp);
	return 0;
}