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
struct inode {int /*<<< orphan*/  i_mutex; TYPE_2__* i_sb; int /*<<< orphan*/  i_size; } ;
struct file {scalar_t__ f_pos; scalar_t__ f_version; TYPE_1__* f_mapping; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {scalar_t__ s_maxbytes; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
#define  SEEK_CUR 129 
#define  SEEK_END 128 
 scalar_t__ FUNC0 (struct file*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

loff_t FUNC5(struct file *file, loff_t offset, int origin)
{
	struct inode *inode = file->f_mapping->host;
	loff_t ret = -EINVAL;
	int dx_dir = FUNC1(inode);

	FUNC2(&inode->i_mutex);

	/* NOTE: relative offsets with dx directories might not work
	 *       as expected, as it is difficult to figure out the
	 *       correct offset between dx hashes */

	switch (origin) {
	case SEEK_END:
		if (FUNC4(offset > 0))
			goto out_err; /* not supported for directories */

		/* so only negative offsets are left, does that have a
		 * meaning for directories at all? */
		if (dx_dir)
			offset += FUNC0(file);
		else
			offset += inode->i_size;
		break;
	case SEEK_CUR:
		/*
		 * Here we special-case the lseek(fd, 0, SEEK_CUR)
		 * position-querying operation.  Avoid rewriting the "same"
		 * f_pos value back to the file because a concurrent read(),
		 * write() or lseek() might have altered it
		 */
		if (offset == 0) {
			offset = file->f_pos;
			goto out_ok;
		}

		offset += file->f_pos;
		break;
	}

	if (FUNC4(offset < 0))
		goto out_err;

	if (!dx_dir) {
		if (offset > inode->i_sb->s_maxbytes)
			goto out_err;
	} else if (offset > FUNC0(file))
		goto out_err;

	/* Special lock needed here? */
	if (offset != file->f_pos) {
		file->f_pos = offset;
		file->f_version = 0;
	}

out_ok:
	ret = offset;
out_err:
	FUNC3(&inode->i_mutex);

	return ret;
}