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
struct rpc_message {struct nfs_renameargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int /*<<< orphan*/  name; } ;
struct nfs_renameargs {struct qstr* new_name; int /*<<< orphan*/  new_dir; struct qstr* old_name; int /*<<< orphan*/  old_dir; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 size_t NFSPROC_RENAME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/ * nfs_procedures ; 
 int FUNC4 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct inode *old_dir, struct qstr *old_name,
		struct inode *new_dir, struct qstr *new_name)
{
	struct nfs_renameargs	arg = {
		.old_dir	= FUNC1(old_dir),
		.old_name	= old_name,
		.new_dir	= FUNC1(new_dir),
		.new_name	= new_name,
	};
	struct rpc_message msg = {
		.rpc_proc	= &nfs_procedures[NFSPROC_RENAME],
		.rpc_argp	= &arg,
	};
	int			status;

	FUNC2("NFS call  rename %s -> %s\n", old_name->name, new_name->name);
	status = FUNC4(FUNC0(old_dir), &msg, 0);
	FUNC3(old_dir);
	FUNC3(new_dir);
	FUNC2("NFS reply rename: %d\n", status);
	return status;
}