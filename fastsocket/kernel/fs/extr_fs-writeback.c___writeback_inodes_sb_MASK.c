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
struct writeback_control {int /*<<< orphan*/  older_than_this; int /*<<< orphan*/  for_kupdate; } ;
struct super_block {int /*<<< orphan*/  s_umount; } ;
struct bdi_writeback {int /*<<< orphan*/  b_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  inode_lock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bdi_writeback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,struct bdi_writeback*,struct writeback_control*,int) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb,
		struct bdi_writeback *wb, struct writeback_control *wbc)
{
	FUNC0(!FUNC3(&sb->s_umount));

	FUNC4(&inode_lock);
	if (!wbc->for_kupdate || FUNC1(&wb->b_io))
		FUNC2(wb, wbc->older_than_this);
	FUNC6(sb, wb, wbc, true);
	FUNC5(&inode_lock);
}