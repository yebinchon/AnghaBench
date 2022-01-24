#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {int /*<<< orphan*/  ns_super_sem; struct nilfs_sb_info* ns_current; int /*<<< orphan*/  ns_sem; int /*<<< orphan*/  ns_mount_state; TYPE_1__** ns_sbp; } ;
struct super_block {int s_flags; int /*<<< orphan*/ * s_fs_info; } ;
struct nilfs_sb_info {int /*<<< orphan*/ * s_super; struct the_nilfs* s_nilfs; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_state; } ;

/* Variables and functions */
 int MS_RDONLY ; 
 struct nilfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct super_block *sb)
{
	struct nilfs_sb_info *sbi = FUNC0(sb);
	struct the_nilfs *nilfs = sbi->s_nilfs;

	FUNC3();

	FUNC6(sbi);

	if (!(sb->s_flags & MS_RDONLY)) {
		FUNC2(&nilfs->ns_sem);
		nilfs->ns_sbp[0]->s_state = FUNC1(nilfs->ns_mount_state);
		FUNC4(sbi, 1);
		FUNC10(&nilfs->ns_sem);
	}
	FUNC2(&nilfs->ns_super_sem);
	if (nilfs->ns_current == sbi)
		nilfs->ns_current = NULL;
	FUNC10(&nilfs->ns_super_sem);

	FUNC5(sbi);
	FUNC8(sbi->s_nilfs);
	sbi->s_super = NULL;
	sb->s_fs_info = NULL;
	FUNC7(sbi);

	FUNC9();
}