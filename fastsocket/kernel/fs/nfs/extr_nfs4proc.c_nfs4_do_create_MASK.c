#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fattr; int /*<<< orphan*/  fh; int /*<<< orphan*/  dir_cinfo; int /*<<< orphan*/  seq_res; } ;
struct TYPE_6__ {int /*<<< orphan*/  seq_args; } ;
struct nfs4_createdata {TYPE_1__ res; TYPE_2__ arg; int /*<<< orphan*/  msg; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *dir, struct dentry *dentry, struct nfs4_createdata *data)
{
	int status = FUNC1(FUNC0(dir)->client, FUNC0(dir), &data->msg,
				    &data->arg.seq_args, &data->res.seq_res, 1);
	if (status == 0) {
		FUNC3(dir, &data->res.dir_cinfo);
		status = FUNC2(dentry, data->res.fh, data->res.fattr);
	}
	return status;
}