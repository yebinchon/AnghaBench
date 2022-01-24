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
typedef  int umode_t ;
struct dentry {TYPE_1__* d_inode; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int dummy; } ;
struct configfs_attribute {int ca_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_NORMAL ; 
 int S_IALLUGO ; 
 int S_IFREG ; 
 int FUNC0 (struct configfs_dirent*,int /*<<< orphan*/ *,void*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct dentry * dir, const struct configfs_attribute * attr, int type)
{
	struct configfs_dirent * parent_sd = dir->d_fsdata;
	umode_t mode = (attr->ca_mode & S_IALLUGO) | S_IFREG;
	int error = 0;

	FUNC1(&dir->d_inode->i_mutex, I_MUTEX_NORMAL);
	error = FUNC0(parent_sd, NULL, (void *) attr, mode, type);
	FUNC2(&dir->d_inode->i_mutex);

	return error;
}