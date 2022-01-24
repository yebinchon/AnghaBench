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
struct rpc_message {struct nfs_removeres* rpc_resp; struct nfs_removeargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int name; int /*<<< orphan*/  len; } ;
struct nfs_removeres {int /*<<< orphan*/ * dir_attr; } ;
struct TYPE_2__ {int name; int /*<<< orphan*/  len; } ;
struct nfs_removeargs {TYPE_1__ name; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFS3PROC_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct inode *dir, struct qstr *name)
{
	struct nfs_removeargs arg = {
		.fh = FUNC1(dir),
		.name.len = name->len,
		.name.name = name->name,
	};
	struct nfs_removeres res;
	struct rpc_message msg = {
		.rpc_proc = &nfs3_procedures[NFS3PROC_REMOVE],
		.rpc_argp = &arg,
		.rpc_resp = &res,
	};
	int status = -ENOMEM;

	FUNC2("NFS call  remove %s\n", name->name);
	res.dir_attr = FUNC3();
	if (res.dir_attr == NULL)
		goto out;

	status = FUNC6(FUNC0(dir), &msg, 0);
	FUNC5(dir, res.dir_attr);
	FUNC4(res.dir_attr);
out:
	FUNC2("NFS reply remove: %d\n", status);
	return status;
}