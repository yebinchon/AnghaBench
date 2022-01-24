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
struct rpc_message {struct nfs_fsinfo* rpc_resp; struct nfs_fh* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct nfs_fsinfo {int /*<<< orphan*/  fattr; } ;
struct nfs_fh {int dummy; } ;

/* Variables and functions */
 size_t NFS3PROC_FSINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_clnt*,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct rpc_clnt *client, struct nfs_fh *fhandle,
		 struct nfs_fsinfo *info)
{
	struct rpc_message msg = {
		.rpc_proc	= &nfs3_procedures[NFS3PROC_FSINFO],
		.rpc_argp	= fhandle,
		.rpc_resp	= info,
	};
	int	status;

	FUNC0("NFS call  fsinfo\n");
	FUNC1(info->fattr);
	status = FUNC2(client, &msg, 0);
	FUNC0("NFS reply fsinfo: %d\n", status);
	return status;
}