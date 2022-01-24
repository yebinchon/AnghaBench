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
struct the_nilfs {int /*<<< orphan*/  ns_sem; } ;
struct super_block {scalar_t__ s_dirt; } ;
struct nilfs_sb_info {struct the_nilfs* s_nilfs; } ;

/* Variables and functions */
 struct nilfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_sb_info*,int) ; 
 int FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, int wait)
{
	struct nilfs_sb_info *sbi = FUNC0(sb);
	struct the_nilfs *nilfs = sbi->s_nilfs;
	int err = 0;

	/* This function is called when super block should be written back */
	if (wait)
		err = FUNC3(sb);

	FUNC1(&nilfs->ns_sem);
	if (sb->s_dirt)
		FUNC2(sbi, 1);
	FUNC4(&nilfs->ns_sem);

	return err;
}