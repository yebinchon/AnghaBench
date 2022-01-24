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
struct vm_area_struct {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {int /*<<< orphan*/  clientCanCacheRead; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 (struct inode*) ; 
 int FUNC4 (struct file*,struct vm_area_struct*) ; 

int FUNC5(struct file *file, struct vm_area_struct *vma)
{
	int rc, xid;
	struct inode *inode = file->f_path.dentry->d_inode;

	xid = FUNC2();

	if (!FUNC0(inode)->clientCanCacheRead) {
		rc = FUNC3(inode);
		if (rc)
			return rc;
	}

	rc = FUNC4(file, vma);
	FUNC1(xid);
	return rc;
}