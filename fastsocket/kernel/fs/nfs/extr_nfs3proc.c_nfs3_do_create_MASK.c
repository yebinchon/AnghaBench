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
struct TYPE_2__ {int /*<<< orphan*/  fattr; int /*<<< orphan*/  fh; int /*<<< orphan*/  dir_attr; } ;
struct nfs3_createdata {TYPE_1__ res; int /*<<< orphan*/  msg; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *dir, struct dentry *dentry, struct nfs3_createdata *data)
{
	int status;

	status = FUNC3(FUNC0(dir), &data->msg, 0);
	FUNC2(dir, data->res.dir_attr);
	if (status == 0)
		status = FUNC1(dentry, data->res.fh, data->res.fattr);
	return status;
}