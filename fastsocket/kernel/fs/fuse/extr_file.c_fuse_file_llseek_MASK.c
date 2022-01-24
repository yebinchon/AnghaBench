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
struct inode {int /*<<< orphan*/  i_mutex; TYPE_1__* i_sb; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {int f_pos; scalar_t__ f_version; TYPE_3__ f_path; } ;
typedef  int loff_t ;
struct TYPE_5__ {struct inode* d_inode; } ;
struct TYPE_4__ {int s_maxbytes; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SEEK_CUR 129 
#define  SEEK_END 128 
 int FUNC0 (struct inode*,int /*<<< orphan*/ *,struct file*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static loff_t FUNC4(struct file *file, loff_t offset, int origin)
{
	loff_t retval;
	struct inode *inode = file->f_path.dentry->d_inode;

	FUNC2(&inode->i_mutex);
	switch (origin) {
	case SEEK_END:
		retval = FUNC0(inode, NULL, file, NULL);
		if (retval)
			goto exit;
		offset += FUNC1(inode);
		break;
	case SEEK_CUR:
		offset += file->f_pos;
	}
	retval = -EINVAL;
	if (offset >= 0 && offset <= inode->i_sb->s_maxbytes) {
		if (offset != file->f_pos) {
			file->f_pos = offset;
			file->f_version = 0;
		}
		retval = offset;
	}
exit:
	FUNC3(&inode->i_mutex);
	return retval;
}