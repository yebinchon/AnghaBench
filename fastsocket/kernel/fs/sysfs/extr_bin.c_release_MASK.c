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
struct file {struct bin_buffer* private_data; } ;
struct bin_buffer {struct bin_buffer* buffer; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bin_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_bin_lock ; 

__attribute__((used)) static int FUNC4(struct inode * inode, struct file * file)
{
	struct bin_buffer *bb = file->private_data;

	FUNC2(&sysfs_bin_lock);
	FUNC0(&bb->list);
	FUNC3(&sysfs_bin_lock);

	FUNC1(bb->buffer);
	FUNC1(bb);
	return 0;
}