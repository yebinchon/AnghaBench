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
struct super_block {int dummy; } ;
struct ext2_sb_info {TYPE_1__* s_es; int /*<<< orphan*/  s_mount_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_state; } ;

/* Variables and functions */
 struct ext2_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct super_block *sb)
{
	struct ext2_sb_info *sbi = FUNC0(sb);

	/* Set EXT2_FS_VALID flag */
	FUNC3();
	sbi->s_es->s_state = FUNC1(sbi->s_mount_state);
	FUNC4();
	FUNC2(sb, sbi->s_es);

	return 0;
}