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
struct super_block {int s_flags; int /*<<< orphan*/  s_id; } ;
struct jfs_sb_info {int flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_DIRTY ; 
 int JFS_ERR_PANIC ; 
 int JFS_ERR_REMOUNT_RO ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	struct jfs_sb_info *sbi = FUNC0(sb);

	if (sb->s_flags & MS_RDONLY)
		return;

	FUNC3(sb, FM_DIRTY);

	if (sbi->flag & JFS_ERR_PANIC)
		FUNC2("JFS (device %s): panic forced after error\n",
			sb->s_id);
	else if (sbi->flag & JFS_ERR_REMOUNT_RO) {
		FUNC1("ERROR: (device %s): remounting filesystem "
			"as read-only\n",
			sb->s_id);
		sb->s_flags |= MS_RDONLY;
	}

	/* nothing is done for continue beyond marking the superblock dirty */
}