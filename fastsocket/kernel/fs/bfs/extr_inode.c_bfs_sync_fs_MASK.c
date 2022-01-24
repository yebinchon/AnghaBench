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
struct super_block {scalar_t__ s_dirt; } ;
struct bfs_sb_info {int /*<<< orphan*/  bfs_lock; int /*<<< orphan*/  si_sbh; } ;

/* Variables and functions */
 struct bfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, int wait)
{
	struct bfs_sb_info *info = FUNC0(sb);

	FUNC2(&info->bfs_lock);
	FUNC1(info->si_sbh);
	sb->s_dirt = 0;
	FUNC3(&info->bfs_lock);

	return 0;
}