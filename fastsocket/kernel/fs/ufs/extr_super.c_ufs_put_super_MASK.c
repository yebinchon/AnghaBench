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
struct ufs_sb_info {struct ufs_sb_info* s_uspi; } ;
struct super_block {int s_flags; int /*<<< orphan*/ * s_fs_info; scalar_t__ s_dirt; } ;

/* Variables and functions */
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ufs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 

__attribute__((used)) static void FUNC6(struct super_block *sb)
{
	struct ufs_sb_info * sbi = FUNC1(sb);
		
	FUNC0("ENTER\n");

	if (sb->s_dirt)
		FUNC5(sb);

	if (!(sb->s_flags & MS_RDONLY))
		FUNC4(sb);
	
	FUNC3 (sbi->s_uspi);
	FUNC2 (sbi->s_uspi);
	FUNC2 (sbi);
	sb->s_fs_info = NULL;
	FUNC0("EXIT\n");
	return;
}