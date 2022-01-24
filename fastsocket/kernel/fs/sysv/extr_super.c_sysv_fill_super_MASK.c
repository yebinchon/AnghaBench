#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xenix_super_block {int dummy; } ;
struct sysv_sb_info {struct buffer_head* s_bh2; struct buffer_head* s_bh1; scalar_t__ s_block_base; struct super_block* s_sb; } ;
struct sysv_inode {int dummy; } ;
struct sysv4_super_block {int dummy; } ;
struct sysv2_super_block {int dummy; } ;
struct super_block {int s_id; struct sysv_sb_info* s_fs_info; } ;
struct coh_super_block {int dummy; } ;
struct buffer_head {int b_blocknr; } ;
struct TYPE_3__ {unsigned long block; int (* test ) (int /*<<< orphan*/ ,struct buffer_head*) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct super_block*,int,int) ; 
 TYPE_1__* flavours ; 
 int /*<<< orphan*/  FUNC5 (struct sysv_sb_info*) ; 
 struct sysv_sb_info* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 struct buffer_head* FUNC8 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb, void *data, int silent)
{
	struct buffer_head *bh1, *bh = NULL;
	struct sysv_sb_info *sbi;
	unsigned long blocknr;
	int size = 0, i;
	
	FUNC1(1024 != sizeof (struct xenix_super_block));
	FUNC1(512 != sizeof (struct sysv4_super_block));
	FUNC1(512 != sizeof (struct sysv2_super_block));
	FUNC1(500 != sizeof (struct coh_super_block));
	FUNC1(64 != sizeof (struct sysv_inode));

	sbi = FUNC6(sizeof(struct sysv_sb_info), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;

	sbi->s_sb = sb;
	sbi->s_block_base = 0;
	sb->s_fs_info = sbi;

	FUNC9(sb, BLOCK_SIZE);

	for (i = 0; i < FUNC0(flavours) && !size; i++) {
		FUNC3(bh);
		bh = FUNC8(sb, flavours[i].block);
		if (!bh)
			continue;
		size = flavours[i].test(FUNC2(sb), bh);
	}

	if (!size)
		goto Eunknown;

	switch (size) {
		case 1:
			blocknr = bh->b_blocknr << 1;
			FUNC3(bh);
			FUNC9(sb, 512);
			bh1 = FUNC8(sb, blocknr);
			bh = FUNC8(sb, blocknr + 1);
			break;
		case 2:
			bh1 = bh;
			break;
		case 3:
			blocknr = bh->b_blocknr >> 1;
			FUNC3(bh);
			FUNC9(sb, 2048);
			bh1 = bh = FUNC8(sb, blocknr);
			break;
		default:
			goto Ebadsize;
	}

	if (bh && bh1) {
		sbi->s_bh1 = bh1;
		sbi->s_bh2 = bh;
		if (FUNC4(sb, silent, size))
			return 0;
	}

	FUNC3(bh1);
	FUNC3(bh);
	FUNC9(sb, BLOCK_SIZE);
	FUNC7("oldfs: cannot read superblock\n");
failed:
	FUNC5(sbi);
	return -EINVAL;

Eunknown:
	FUNC3(bh);
	if (!silent)
		FUNC7("VFS: unable to find oldfs superblock on device %s\n",
			sb->s_id);
	goto failed;
Ebadsize:
	FUNC3(bh);
	if (!silent)
		FUNC7("VFS: oldfs: unsupported block size (%dKb)\n",
			1<<(size-2));
	goto failed;
}