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
struct super_block {int /*<<< orphan*/ * s_fs_info; scalar_t__ s_dirt; } ;
struct bfs_sb_info {struct bfs_sb_info* si_imap; int /*<<< orphan*/  bfs_lock; int /*<<< orphan*/  si_sbh; } ;

/* Variables and functions */
 struct bfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct super_block *s)
{
	struct bfs_sb_info *info = FUNC0(s);

	if (!info)
		return;

	FUNC4();

	if (s->s_dirt)
		FUNC1(s);

	FUNC2(info->si_sbh);
	FUNC5(&info->bfs_lock);
	FUNC3(info->si_imap);
	FUNC3(info);
	s->s_fs_info = NULL;

	FUNC6();
}