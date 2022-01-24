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
struct iso_directory_record {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef  int /*<<< orphan*/  filldir_t ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct file*,void*,int /*<<< orphan*/ ,char*,struct iso_directory_record*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct file *filp,
		void *dirent, filldir_t filldir)
{
	int result;
	char *tmpname;
	struct iso_directory_record *tmpde;
	struct inode *inode = filp->f_path.dentry->d_inode;

	tmpname = (char *)FUNC0(GFP_KERNEL);
	if (tmpname == NULL)
		return -ENOMEM;

	FUNC3();
	tmpde = (struct iso_directory_record *) (tmpname+1024);

	result = FUNC1(inode, filp, dirent, filldir, tmpname, tmpde);

	FUNC2((unsigned long) tmpname);
	FUNC4();
	return result;
}