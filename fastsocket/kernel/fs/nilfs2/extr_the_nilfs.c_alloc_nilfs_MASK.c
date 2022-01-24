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
struct the_nilfs {int /*<<< orphan*/  ns_segctor_sem; int /*<<< orphan*/ * ns_gc_inodes_h; int /*<<< orphan*/  ns_last_segment_lock; int /*<<< orphan*/  ns_supers; int /*<<< orphan*/  ns_list; int /*<<< orphan*/  ns_writer_sem; int /*<<< orphan*/  ns_mount_mutex; int /*<<< orphan*/  ns_super_sem; int /*<<< orphan*/  ns_sem; int /*<<< orphan*/  ns_ndirtyblks; int /*<<< orphan*/  ns_count; struct block_device* ns_bdev; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct the_nilfs* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct the_nilfs *FUNC6(struct block_device *bdev)
{
	struct the_nilfs *nilfs;

	nilfs = FUNC3(sizeof(*nilfs), GFP_KERNEL);
	if (!nilfs)
		return NULL;

	nilfs->ns_bdev = bdev;
	FUNC1(&nilfs->ns_count, 1);
	FUNC1(&nilfs->ns_ndirtyblks, 0);
	FUNC2(&nilfs->ns_sem);
	FUNC2(&nilfs->ns_super_sem);
	FUNC4(&nilfs->ns_mount_mutex);
	FUNC2(&nilfs->ns_writer_sem);
	FUNC0(&nilfs->ns_list);
	FUNC0(&nilfs->ns_supers);
	FUNC5(&nilfs->ns_last_segment_lock);
	nilfs->ns_gc_inodes_h = NULL;
	FUNC2(&nilfs->ns_segctor_sem);

	return nilfs;
}