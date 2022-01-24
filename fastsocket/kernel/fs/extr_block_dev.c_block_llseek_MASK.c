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
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct file {scalar_t__ f_pos; TYPE_1__* f_mapping; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static loff_t FUNC3(struct file *file, loff_t offset, int origin)
{
	struct inode *bd_inode = file->f_mapping->host;
	loff_t size;
	loff_t retval;

	FUNC1(&bd_inode->i_mutex);
	size = FUNC0(bd_inode);

	switch (origin) {
		case 2:
			offset += size;
			break;
		case 1:
			offset += file->f_pos;
	}
	retval = -EINVAL;
	if (offset >= 0 && offset <= size) {
		if (offset != file->f_pos) {
			file->f_pos = offset;
		}
		retval = offset;
	}
	FUNC2(&bd_inode->i_mutex);
	return retval;
}