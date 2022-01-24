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
struct nfs_server {int /*<<< orphan*/  caps; } ;
struct nfs_openres {int rflags; TYPE_2__* f_attr; int /*<<< orphan*/  fh; int /*<<< orphan*/  cinfo; } ;
struct nfs_openargs {int open_flags; } ;
struct nfs4_opendata {int /*<<< orphan*/  f_attr; int /*<<< orphan*/  rpc_done; struct nfs_openres o_res; struct nfs_openargs o_arg; TYPE_1__* dir; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int valid; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ENOENT ; 
 int NFS4ERR_BADNAME ; 
 int NFS4_OPEN_RESULT_CONFIRM ; 
 int NFS4_OPEN_RESULT_LOCKTYPE_POSIX ; 
 int NFS_ATTR_FATTR ; 
 int /*<<< orphan*/  NFS_CAP_POSIX_LOCK ; 
 struct nfs_server* FUNC0 (struct inode*) ; 
 int O_CREAT ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_server*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC2 (struct nfs4_opendata*) ; 
 int FUNC3 (struct nfs4_opendata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_server*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct nfs4_opendata *data)
{
	struct inode *dir = data->dir->d_inode;
	struct nfs_server *server = FUNC0(dir);
	struct nfs_openargs *o_arg = &data->o_arg;
	struct nfs_openres *o_res = &data->o_res;
	int status;

	status = FUNC3(data, 0);
	if (!data->rpc_done)
		return status;
	if (status != 0) {
		if (status == -NFS4ERR_BADNAME &&
				!(o_arg->open_flags & O_CREAT))
			return -ENOENT;
		return status;
	}

	FUNC4(server, &data->f_attr);

	if (o_arg->open_flags & O_CREAT)
		FUNC5(dir, &o_res->cinfo);
	if ((o_res->rflags & NFS4_OPEN_RESULT_LOCKTYPE_POSIX) == 0)
		server->caps &= ~NFS_CAP_POSIX_LOCK;
	if(o_res->rflags & NFS4_OPEN_RESULT_CONFIRM) {
		status = FUNC2(data);
		if (status != 0)
			return status;
	}
	if (!(o_res->f_attr->valid & NFS_ATTR_FATTR))
		FUNC1(server, &o_res->fh, o_res->f_attr);
	return 0;
}