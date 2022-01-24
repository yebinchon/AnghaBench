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
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_size; TYPE_3__* i_sb; } ;
struct file {scalar_t__ f_pos; scalar_t__ f_version; TYPE_1__* f_mapping; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_6__ {scalar_t__ s_maxbytes; } ;
struct TYPE_5__ {scalar_t__ s_bitmap_maxbytes; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
#define  SEEK_CUR 129 
#define  SEEK_END 128 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

loff_t FUNC4(struct file *file, loff_t offset, int origin)
{
	struct inode *inode = file->f_mapping->host;
	loff_t maxbytes;

	if (!(FUNC1(inode, EXT4_INODE_EXTENTS)))
		maxbytes = FUNC0(inode->i_sb)->s_bitmap_maxbytes;
	else
		maxbytes = inode->i_sb->s_maxbytes;
	FUNC2(&inode->i_mutex);
	switch (origin) {
	case SEEK_END:
		offset += inode->i_size;
		break;
	case SEEK_CUR:
		if (offset == 0) {
			FUNC3(&inode->i_mutex);
			return file->f_pos;
		}
		offset += file->f_pos;
		break;
	}

	if (offset < 0 || offset > maxbytes) {
		FUNC3(&inode->i_mutex);
		return -EINVAL;
	}

	if (offset != file->f_pos) {
		file->f_pos = offset;
		file->f_version = 0;
	}
	FUNC3(&inode->i_mutex);

	return offset;
}