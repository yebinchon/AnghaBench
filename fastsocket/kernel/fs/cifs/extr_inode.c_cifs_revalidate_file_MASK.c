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
struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {scalar_t__ invalid_mapping; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct file*) ; 

int FUNC3(struct file *filp)
{
	int rc;
	struct inode *inode = filp->f_path.dentry->d_inode;

	rc = FUNC2(filp);
	if (rc)
		return rc;

	if (FUNC0(inode)->invalid_mapping)
		rc = FUNC1(inode);
	return rc;
}