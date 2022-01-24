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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct super_block {struct exofs_sb_info* s_fs_info; scalar_t__ s_dirt; } ;
struct exofs_sb_info {int /*<<< orphan*/  s_dev; int /*<<< orphan*/  s_curr_pending; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct exofs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	int num_pend;
	struct exofs_sb_info *sbi = sb->s_fs_info;

	if (sb->s_dirt)
		FUNC1(sb);

	/* make sure there are no pending commands */
	for (num_pend = FUNC0(&sbi->s_curr_pending); num_pend > 0;
	     num_pend = FUNC0(&sbi->s_curr_pending)) {
		wait_queue_head_t wq;
		FUNC2(&wq);
		FUNC6(wq,
				  (FUNC0(&sbi->s_curr_pending) == 0),
				  FUNC4(100));
	}

	FUNC5(sbi->s_dev);
	FUNC3(sb->s_fs_info);
	sb->s_fs_info = NULL;
}