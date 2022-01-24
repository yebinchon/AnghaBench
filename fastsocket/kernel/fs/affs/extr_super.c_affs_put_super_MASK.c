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
struct super_block {int s_flags; int /*<<< orphan*/ * s_fs_info; } ;
struct affs_sb_info {int /*<<< orphan*/  s_root_bh; struct affs_sb_info* s_prefix; } ;

/* Variables and functions */
 struct affs_sb_info* FUNC0 (struct super_block*) ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct affs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(struct super_block *sb)
{
	struct affs_sb_info *sbi = FUNC0(sb);
	FUNC6("AFFS: put_super()\n");

	FUNC5();

	if (!(sb->s_flags & MS_RDONLY))
		FUNC2(sb, 1);

	FUNC4(sbi->s_prefix);
	FUNC3(sb);
	FUNC1(sbi->s_root_bh);
	FUNC4(sbi);
	sb->s_fs_info = NULL;

	FUNC7();
}