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
struct rpc_message {struct nfs_renameres* rpc_resp; struct nfs_renameargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int /*<<< orphan*/  name; } ;
struct nfs_renameres {int /*<<< orphan*/ * new_fattr; int /*<<< orphan*/ * old_fattr; } ;
struct nfs_renameargs {struct qstr* new_name; int /*<<< orphan*/  new_dir; struct qstr* old_name; int /*<<< orphan*/  old_dir; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFS3PROC_RENAME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct inode *old_dir, struct qstr *old_name,
		 struct inode *new_dir, struct qstr *new_name)
{
	struct nfs_renameargs	arg = {
		.old_dir	= FUNC1(old_dir),
		.old_name	= old_name,
		.new_dir	= FUNC1(new_dir),
		.new_name	= new_name,
	};
	struct nfs_renameres res;
	struct rpc_message msg = {
		.rpc_proc	= &nfs3_procedures[NFS3PROC_RENAME],
		.rpc_argp	= &arg,
		.rpc_resp	= &res,
	};
	int status = -ENOMEM;

	FUNC2("NFS call  rename %s -> %s\n", old_name->name, new_name->name);

	res.old_fattr = FUNC3();
	res.new_fattr = FUNC3();
	if (res.old_fattr == NULL || res.new_fattr == NULL)
		goto out;

	status = FUNC6(FUNC0(old_dir), &msg, 0);
	FUNC5(old_dir, res.old_fattr);
	FUNC5(new_dir, res.new_fattr);
out:
	FUNC4(res.old_fattr);
	FUNC4(res.new_fattr);
	FUNC2("NFS reply rename: %d\n", status);
	return status;
}