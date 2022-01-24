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
struct path {TYPE_1__* dentry; } ;
struct inode {int dummy; } ;
struct file {struct path f_path; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_MTIME ; 
 int ATTR_OPEN ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,struct file*) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct path*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct file *filp)
{
	struct path *path = &filp->f_path;
	struct inode *inode = path->dentry->d_inode;
	int error = FUNC1(inode);
	if (error)
		return error;
	/*
	 * Refuse to truncate files with mandatory locks held on them.
	 */
	error = FUNC2(inode);
	if (!error)
		error = FUNC4(path, 0,
				       ATTR_MTIME|ATTR_CTIME|ATTR_OPEN);
	if (!error) {
		error = FUNC0(path->dentry, 0,
				    ATTR_MTIME|ATTR_CTIME|ATTR_OPEN,
				    filp);
	}
	FUNC3(inode);
	return error;
}