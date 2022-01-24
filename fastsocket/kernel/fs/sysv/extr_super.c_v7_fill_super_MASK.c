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
struct v7_super_block {int /*<<< orphan*/  s_time; int /*<<< orphan*/  s_ninode; int /*<<< orphan*/  s_nfree; } ;
struct sysv_sb_info {struct buffer_head* s_bh2; struct buffer_head* s_bh1; int /*<<< orphan*/  s_bytesex; int /*<<< orphan*/  s_type; scalar_t__ s_block_base; struct super_block* s_sb; } ;
struct sysv_inode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_mode; } ;
struct super_block {int /*<<< orphan*/  s_id; struct sysv_sb_info* s_fs_info; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BYTESEX_PDP ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSTYPE_V7 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IFDIR ; 
 int V7_NICFREE ; 
 int V7_NICINOD ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct super_block*,int,int) ; 
 int FUNC2 (struct sysv_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sysv_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sysv_sb_info*) ; 
 struct sysv_sb_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC8 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb, void *data, int silent)
{
	struct sysv_sb_info *sbi;
	struct buffer_head *bh, *bh2 = NULL;
	struct v7_super_block *v7sb;
	struct sysv_inode *v7i;

	if (440 != sizeof (struct v7_super_block))
		FUNC6("V7 FS: bad super-block size");
	if (64 != sizeof (struct sysv_inode))
		FUNC6("sysv fs: bad i-node size");

	sbi = FUNC5(sizeof(struct sysv_sb_info), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;

	sbi->s_sb = sb;
	sbi->s_block_base = 0;
	sbi->s_type = FSTYPE_V7;
	sbi->s_bytesex = BYTESEX_PDP;
	sb->s_fs_info = sbi;
	
	FUNC9(sb, 512);

	if ((bh = FUNC8(sb, 1)) == NULL) {
		if (!silent)
			FUNC7("VFS: unable to read V7 FS superblock on "
			       "device %s.\n", sb->s_id);
		goto failed;
	}

	/* plausibility check on superblock */
	v7sb = (struct v7_super_block *) bh->b_data;
	if (FUNC2(sbi, v7sb->s_nfree) > V7_NICFREE ||
	    FUNC2(sbi, v7sb->s_ninode) > V7_NICINOD ||
	    FUNC3(sbi, v7sb->s_time) == 0)
		goto failed;

	/* plausibility check on root inode: it is a directory,
	   with a nonzero size that is a multiple of 16 */
	if ((bh2 = FUNC8(sb, 2)) == NULL)
		goto failed;
	v7i = (struct sysv_inode *)(bh2->b_data + 64);
	if ((FUNC2(sbi, v7i->i_mode) & ~0777) != S_IFDIR ||
	    (FUNC3(sbi, v7i->i_size) == 0) ||
	    (FUNC3(sbi, v7i->i_size) & 017) != 0)
		goto failed;
	FUNC0(bh2);
	bh2 = NULL;

	sbi->s_bh1 = bh;
	sbi->s_bh2 = bh;
	if (FUNC1(sb, silent, 1))
		return 0;

failed:
	FUNC0(bh2);
	FUNC0(bh);
	FUNC4(sbi);
	return -EINVAL;
}