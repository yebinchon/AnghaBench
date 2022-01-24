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
struct file {scalar_t__ private_data; TYPE_2__ f_path; } ;
struct cifsFileInfo {int /*<<< orphan*/  tlink; } ;
struct TYPE_6__ {scalar_t__ unix_ext; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct file *filp)
{
	int rc = 0;
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct cifsFileInfo *cfile = (struct cifsFileInfo *) filp->private_data;

	if (!FUNC2(inode))
		return rc;

	if (FUNC3(cfile->tlink)->unix_ext)
		rc = FUNC1(filp);
	else
		rc = FUNC0(filp);

	return rc;
}