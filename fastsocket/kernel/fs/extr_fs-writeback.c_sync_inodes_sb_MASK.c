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
struct wb_writeback_work {int /*<<< orphan*/ * done; int /*<<< orphan*/  range_cyclic; int /*<<< orphan*/  nr_pages; int /*<<< orphan*/  sync_mode; struct super_block* sb; } ;
struct super_block {int /*<<< orphan*/  s_bdi; int /*<<< orphan*/  s_umount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wb_writeback_work*) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 

void FUNC6(struct super_block *sb)
{
	FUNC0(done);
	struct wb_writeback_work work = {
		.sb		= sb,
		.sync_mode	= WB_SYNC_ALL,
		.nr_pages	= LONG_MAX,
		.range_cyclic	= 0,
		.done		= &done,
	};

	FUNC1(!FUNC3(&sb->s_umount));

	FUNC2(sb->s_bdi, &work);
	FUNC4(&done);

	FUNC5(sb);
}