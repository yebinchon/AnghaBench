#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int dummy; } ;
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {struct dentry* s_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

__attribute__((used)) static void FUNC3(struct dentry * dentry,
			    struct inode * inode)
{
	struct configfs_dirent * sd = dentry->d_fsdata;

	if (sd) {
		FUNC0(sd->s_dentry != dentry);
		sd->s_dentry = NULL;
		FUNC1(sd);
	}
	FUNC2(inode);
}