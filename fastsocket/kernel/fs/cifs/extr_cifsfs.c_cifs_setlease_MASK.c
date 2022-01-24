#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file_lock {int dummy; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {struct cifsFileInfo* private_data; TYPE_2__ f_path; } ;
struct cifsFileInfo {int /*<<< orphan*/  tlink; } ;
struct TYPE_8__ {scalar_t__ clientCanCacheRead; scalar_t__ clientCanCacheAll; } ;
struct TYPE_7__ {scalar_t__ local_lease; } ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int EAGAIN ; 
 int EINVAL ; 
 long F_RDLCK ; 
 long F_WRLCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,long,struct file_lock**) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, long arg, struct file_lock **lease)
{
	/* note that this is called by vfs setlease with the BKL held
	   although I doubt that BKL is needed here in cifs */
	struct inode *inode = file->f_path.dentry->d_inode;
	struct cifsFileInfo *cfile = file->private_data;

	if (!(FUNC1(inode->i_mode)))
		return -EINVAL;

	/* check if file is oplocked */
	if (((arg == F_RDLCK) &&
		(FUNC0(inode)->clientCanCacheRead)) ||
	    ((arg == F_WRLCK) &&
		(FUNC0(inode)->clientCanCacheAll)))
		return FUNC2(file, arg, lease);
	else if (FUNC3(cfile->tlink)->local_lease &&
		 !FUNC0(inode)->clientCanCacheRead)
		/* If the server claims to support oplock on this
		   file, then we still need to check oplock even
		   if the local_lease mount option is set, but there
		   are servers which do not support oplock for which
		   this mount option may be useful if the user
		   knows that the file won't be changed on the server
		   by anyone else */
		return FUNC2(file, arg, lease);
	else
		return -EAGAIN;
}