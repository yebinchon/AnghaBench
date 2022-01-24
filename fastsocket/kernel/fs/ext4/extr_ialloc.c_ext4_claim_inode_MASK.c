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
struct ext4_sb_info {TYPE_1__* s_flex_groups; scalar_t__ s_log_groups_per_flex; } ;
struct ext4_group_info {int /*<<< orphan*/  alloc_sem; } ;
struct ext4_group_desc {int bg_flags; int /*<<< orphan*/  bg_checksum; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  unsigned long ext4_group_t ;
struct TYPE_2__ {int /*<<< orphan*/  used_dirs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_BG_INODE_UNINIT ; 
 int /*<<< orphan*/  EXT4_FEATURE_RO_COMPAT_GDT_CSUM ; 
 unsigned long FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct super_block*) ; 
 struct ext4_sb_info* FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,unsigned long,unsigned long) ; 
 unsigned long FUNC9 (struct ext4_sb_info*,unsigned long) ; 
 int FUNC10 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,struct ext4_group_desc*,int) ; 
 struct ext4_group_desc* FUNC12 (struct super_block*,unsigned long,int /*<<< orphan*/ *) ; 
 struct ext4_group_info* FUNC13 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_sb_info*,unsigned long,struct ext4_group_desc*) ; 
 unsigned long FUNC15 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,struct ext4_group_desc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*,unsigned long) ; 
 scalar_t__ FUNC18 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,unsigned long) ; 
 int FUNC20 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC21 (struct super_block*,struct ext4_group_desc*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct super_block *sb,
			struct buffer_head *inode_bitmap_bh,
			unsigned long ino, ext4_group_t group, int mode)
{
	int free = 0, retval = 0, count;
	struct ext4_sb_info *sbi = FUNC3(sb);
	struct ext4_group_info *grp = FUNC13(sb, group);
	struct ext4_group_desc *gdp = FUNC12(sb, group, NULL);

	/*
	 * We have to be sure that new inode allocation does not race with
	 * inode table initialization, because otherwise we may end up
	 * allocating and writing new inode right before sb_issue_zeroout
	 * takes place and overwriting our new inode with zeroes. So we
	 * take alloc_sem to prevent it.
	 */
	FUNC7(&grp->alloc_sem);
	FUNC17(sb, group);
	if (FUNC18(ino, inode_bitmap_bh->b_data)) {
		/* not a free inode */
		retval = 1;
		goto err_ret;
	}
	ino++;
	if ((group == 0 && ino < FUNC0(sb)) ||
			ino > FUNC2(sb)) {
		FUNC19(sb, group);
		FUNC22(&grp->alloc_sem);
		FUNC8(sb, "reserved inode or inode > inodes count - "
			   "block_group = %u, inode=%lu", group,
			   ino + group * FUNC2(sb));
		return 1;
	}
	/* If we didn't allocate from within the initialized part of the inode
	 * table then we need to initialize up to this inode. */
	if (FUNC1(sb, EXT4_FEATURE_RO_COMPAT_GDT_CSUM)) {

		if (gdp->bg_flags & FUNC6(EXT4_BG_INODE_UNINIT)) {
			gdp->bg_flags &= FUNC6(~EXT4_BG_INODE_UNINIT);
			/* When marking the block group with
			 * ~EXT4_BG_INODE_UNINIT we don't want to depend
			 * on the value of bg_itable_unused even though
			 * mke2fs could have initialized the same for us.
			 * Instead we calculated the value below
			 */

			free = 0;
		} else {
			free = FUNC2(sb) -
				FUNC15(sb, gdp);
		}

		/*
		 * Check the relative inode number against the last used
		 * relative inode number in this group. if it is greater
		 * we need to  update the bg_itable_unused count
		 *
		 */
		if (ino > free)
			FUNC16(sb, gdp,
					(FUNC2(sb) - ino));
	}
	count = FUNC10(sb, gdp) - 1;
	FUNC11(sb, gdp, count);
	if (FUNC4(mode)) {
		count = FUNC20(sb, gdp) + 1;
		FUNC21(sb, gdp, count);
		if (sbi->s_log_groups_per_flex) {
			ext4_group_t f = FUNC9(sbi, group);

			FUNC5(&sbi->s_flex_groups[f].used_dirs);
		}
	}
	gdp->bg_checksum = FUNC14(sbi, group, gdp);
err_ret:
	FUNC19(sb, group);
	FUNC22(&grp->alloc_sem);
	return retval;
}