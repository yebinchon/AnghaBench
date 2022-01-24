#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_10__ {TYPE_4__* dentry; } ;
struct file {int /*<<< orphan*/  f_flags; TYPE_5__ f_path; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_VFSOPEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct file*) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct file *filp)
{
	int res;

	FUNC0("NFS: open file(%s/%s)\n",
			filp->f_path.dentry->d_parent->d_name.name,
			filp->f_path.dentry->d_name.name);

	res = FUNC1(filp->f_flags);
	if (res)
		return res;

	FUNC2(inode, NFSIOS_VFSOPEN);
	res = FUNC3(inode, filp);
	return res;
}