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
typedef  int u64 ;
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_2__ {int* val; } ;
struct kstatfs {scalar_t__ f_bfree; TYPE_1__ f_fsid; int /*<<< orphan*/  f_namelen; void* f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; scalar_t__ f_blocks; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_type; } ;
struct ext3_super_block {scalar_t__ s_uuid; int /*<<< orphan*/  s_inodes_count; int /*<<< orphan*/  s_r_blocks_count; int /*<<< orphan*/  s_blocks_count; int /*<<< orphan*/  s_first_data_block; } ;
struct ext3_sb_info {scalar_t__ s_overhead_last; scalar_t__ s_blocks_last; unsigned long s_groups_count; int s_itb_per_group; int /*<<< orphan*/  s_freeinodes_counter; int /*<<< orphan*/  s_freeblocks_counter; struct ext3_super_block* s_es; } ;
struct dentry {struct super_block* d_sb; } ;
typedef  scalar_t__ ext3_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT3_NAME_LEN ; 
 struct ext3_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT3_SUPER_MAGIC ; 
 int /*<<< orphan*/  MINIX_DF ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct super_block*,unsigned long) ; 
 scalar_t__ FUNC3 (struct super_block*,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10 (struct dentry * dentry, struct kstatfs * buf)
{
	struct super_block *sb = dentry->d_sb;
	struct ext3_sb_info *sbi = FUNC0(sb);
	struct ext3_super_block *es = sbi->s_es;
	u64 fsid;

	if (FUNC9(sb, MINIX_DF)) {
		sbi->s_overhead_last = 0;
	} else if (sbi->s_blocks_last != FUNC4(es->s_blocks_count)) {
		unsigned long ngroups = sbi->s_groups_count, i;
		ext3_fsblk_t overhead = 0;
		FUNC7();

		/*
		 * Compute the overhead (FS structures).  This is constant
		 * for a given filesystem unless the number of block groups
		 * changes so we cache the previous value until it does.
		 */

		/*
		 * All of the blocks before first_data_block are
		 * overhead
		 */
		overhead = FUNC4(es->s_first_data_block);

		/*
		 * Add the overhead attributed to the superblock and
		 * block group descriptors.  If the sparse superblocks
		 * feature is turned on, then not all groups have this.
		 */
		for (i = 0; i < ngroups; i++) {
			overhead += FUNC2(sb, i) +
				FUNC3(sb, i);
			FUNC1();
		}

		/*
		 * Every block group has an inode bitmap, a block
		 * bitmap, and an inode table.
		 */
		overhead += ngroups * (2 + sbi->s_itb_per_group);
		sbi->s_overhead_last = overhead;
		FUNC8();
		sbi->s_blocks_last = FUNC4(es->s_blocks_count);
	}

	buf->f_type = EXT3_SUPER_MAGIC;
	buf->f_bsize = sb->s_blocksize;
	buf->f_blocks = FUNC4(es->s_blocks_count) - sbi->s_overhead_last;
	buf->f_bfree = FUNC6(&sbi->s_freeblocks_counter);
	buf->f_bavail = buf->f_bfree - FUNC4(es->s_r_blocks_count);
	if (buf->f_bfree < FUNC4(es->s_r_blocks_count))
		buf->f_bavail = 0;
	buf->f_files = FUNC4(es->s_inodes_count);
	buf->f_ffree = FUNC6(&sbi->s_freeinodes_counter);
	buf->f_namelen = EXT3_NAME_LEN;
	fsid = FUNC5((void *)es->s_uuid) ^
	       FUNC5((void *)es->s_uuid + sizeof(u64));
	buf->f_fsid.val[0] = fsid & 0xFFFFFFFFUL;
	buf->f_fsid.val[1] = (fsid >> 32) & 0xFFFFFFFFUL;
	return 0;
}