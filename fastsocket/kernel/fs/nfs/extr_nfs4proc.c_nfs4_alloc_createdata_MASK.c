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
typedef  int /*<<< orphan*/  u32 ;
struct qstr {int dummy; } ;
struct nfs_server {int /*<<< orphan*/  attr_bitmask; } ;
struct TYPE_6__ {int /*<<< orphan*/ * fattr; int /*<<< orphan*/ * fh; struct nfs_server* server; } ;
struct TYPE_5__ {int /*<<< orphan*/  bitmask; int /*<<< orphan*/  ftype; struct iattr* attrs; struct qstr* name; struct nfs_server* server; int /*<<< orphan*/  dir_fh; } ;
struct TYPE_4__ {TYPE_3__* rpc_resp; TYPE_2__* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs4_createdata {TYPE_3__ res; int /*<<< orphan*/  fattr; int /*<<< orphan*/  fh; TYPE_2__ arg; TYPE_1__ msg; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NFSPROC4_CLNT_CREATE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 struct nfs4_createdata* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_createdata *FUNC4(struct inode *dir,
		struct qstr *name, struct iattr *sattr, u32 ftype)
{
	struct nfs4_createdata *data;

	data = FUNC2(sizeof(*data), GFP_KERNEL);
	if (data != NULL) {
		struct nfs_server *server = FUNC1(dir);

		data->msg.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_CREATE];
		data->msg.rpc_argp = &data->arg;
		data->msg.rpc_resp = &data->res;
		data->arg.dir_fh = FUNC0(dir);
		data->arg.server = server;
		data->arg.name = name;
		data->arg.attrs = sattr;
		data->arg.ftype = ftype;
		data->arg.bitmask = server->attr_bitmask;
		data->res.server = server;
		data->res.fh = &data->fh;
		data->res.fattr = &data->fattr;
		FUNC3(data->res.fattr);
	}
	return data;
}