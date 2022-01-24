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
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {scalar_t__ f_version; scalar_t__ f_pos; TYPE_2__ f_path; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
#define  SEEK_CUR 129 
#define  SEEK_END 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

loff_t FUNC3(struct file *file, loff_t offset, int origin)
{
	loff_t retval;

	FUNC1();
	switch (origin) {
		case SEEK_END:
			offset += FUNC0(file->f_path.dentry->d_inode);
			break;
		case SEEK_CUR:
			if (offset == 0) {
				retval = file->f_pos;
				goto out;
			}
			offset += file->f_pos;
	}
	retval = -EINVAL;
	if (offset >= 0) {
		if (offset != file->f_pos) {
			file->f_pos = offset;
			file->f_version = 0;
		}
		retval = offset;
	}
out:
	FUNC2();
	return retval;
}