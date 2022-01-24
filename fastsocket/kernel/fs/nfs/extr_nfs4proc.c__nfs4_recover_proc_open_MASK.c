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
struct nfs_openres {int rflags; } ;
struct nfs4_opendata {int /*<<< orphan*/  f_attr; int /*<<< orphan*/  rpc_done; struct nfs_openres o_res; TYPE_1__* dir; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int NFS4_OPEN_RESULT_CONFIRM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct nfs4_opendata*) ; 
 int FUNC2 (struct nfs4_opendata*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nfs4_opendata *data)
{
	struct inode *dir = data->dir->d_inode;
	struct nfs_openres *o_res = &data->o_res;
        int status;

	status = FUNC2(data, 1);
	if (status != 0 || !data->rpc_done)
		return status;

	FUNC3(FUNC0(dir), &data->f_attr);

	if (o_res->rflags & NFS4_OPEN_RESULT_CONFIRM) {
		status = FUNC1(data);
		if (status != 0)
			return status;
	}

	return status;
}