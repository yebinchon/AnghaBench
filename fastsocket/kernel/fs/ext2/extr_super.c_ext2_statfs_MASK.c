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
struct kstatfs {unsigned long f_blocks; void* f_bfree; void* f_ffree; TYPE_1__ f_fsid; int /*<<< orphan*/  f_namelen; void* f_files; void* f_bavail; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_type; } ;
struct ext2_super_block {scalar_t__ s_uuid; void* s_free_inodes_count; int /*<<< orphan*/  s_inodes_count; int /*<<< orphan*/  s_r_blocks_count; void* s_free_blocks_count; int /*<<< orphan*/  s_blocks_count; int /*<<< orphan*/  s_first_data_block; } ;
struct ext2_sb_info {unsigned long s_overhead_last; void* s_blocks_last; unsigned long s_groups_count; int s_itb_per_group; struct ext2_super_block* s_es; } ;
struct dentry {struct super_block* d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_NAME_LEN ; 
 struct ext2_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT2_SUPER_MAGIC ; 
 int /*<<< orphan*/  MINIX_DF ; 
 void* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (struct super_block*,unsigned long) ; 
 scalar_t__ FUNC3 (struct super_block*,unsigned long) ; 
 void* FUNC4 (struct super_block*) ; 
 void* FUNC5 (struct super_block*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11 (struct dentry * dentry, struct kstatfs * buf)
{
	struct super_block *sb = dentry->d_sb;
	struct ext2_sb_info *sbi = FUNC0(sb);
	struct ext2_super_block *es = sbi->s_es;
	u64 fsid;

	if (FUNC10 (sb, MINIX_DF))
		sbi->s_overhead_last = 0;
	else if (sbi->s_blocks_last != FUNC6(es->s_blocks_count)) {
		unsigned long i, overhead = 0;
		FUNC8();

		/*
		 * Compute the overhead (FS structures). This is constant
		 * for a given filesystem unless the number of block groups
		 * changes so we cache the previous value until it does.
		 */

		/*
		 * All of the blocks before first_data_block are
		 * overhead
		 */
		overhead = FUNC6(es->s_first_data_block);

		/*
		 * Add the overhead attributed to the superblock and
		 * block group descriptors.  If the sparse superblocks
		 * feature is turned on, then not all groups have this.
		 */
		for (i = 0; i < sbi->s_groups_count; i++)
			overhead += FUNC2(sb, i) +
				FUNC3(sb, i);

		/*
		 * Every block group has an inode bitmap, a block
		 * bitmap, and an inode table.
		 */
		overhead += (sbi->s_groups_count *
			     (2 + sbi->s_itb_per_group));
		sbi->s_overhead_last = overhead;
		FUNC9();
		sbi->s_blocks_last = FUNC6(es->s_blocks_count);
	}

	buf->f_type = EXT2_SUPER_MAGIC;
	buf->f_bsize = sb->s_blocksize;
	buf->f_blocks = FUNC6(es->s_blocks_count) - sbi->s_overhead_last;
	buf->f_bfree = FUNC4(sb);
	es->s_free_blocks_count = FUNC1(buf->f_bfree);
	buf->f_bavail = buf->f_bfree - FUNC6(es->s_r_blocks_count);
	if (buf->f_bfree < FUNC6(es->s_r_blocks_count))
		buf->f_bavail = 0;
	buf->f_files = FUNC6(es->s_inodes_count);
	buf->f_ffree = FUNC5(sb);
	es->s_free_inodes_count = FUNC1(buf->f_ffree);
	buf->f_namelen = EXT2_NAME_LEN;
	fsid = FUNC7((void *)es->s_uuid) ^
	       FUNC7((void *)es->s_uuid + sizeof(u64));
	buf->f_fsid.val[0] = fsid & 0xFFFFFFFFUL;
	buf->f_fsid.val[1] = (fsid >> 32) & 0xFFFFFFFFUL;
	return 0;
}