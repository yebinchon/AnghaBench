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
struct super_block {int s_flags; } ;
struct inode {unsigned long i_ino; int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct ext2_super_block {int /*<<< orphan*/  s_inodes_count; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_3__ {struct ext2_super_block* s_es; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct super_block*) ; 
 unsigned long FUNC1 (struct super_block*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int MS_SYNCHRONOUS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 unsigned long FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 struct buffer_head* FUNC14 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 

void FUNC19 (struct inode * inode)
{
	struct super_block * sb = inode->i_sb;
	int is_directory;
	unsigned long ino;
	struct buffer_head *bitmap_bh = NULL;
	unsigned long block_group;
	unsigned long bit;
	struct ext2_super_block * es;

	ino = inode->i_ino;
	FUNC7 ("freeing inode %lu\n", ino);

	/*
	 * Note: we must free any quota before locking the superblock,
	 * as writing the quota to disk may need the lock as well.
	 */
	if (!FUNC11(inode)) {
		/* Quota is already initialized in iput() */
		FUNC10(inode);
		FUNC18(inode);
		FUNC17(inode);
	}

	es = FUNC2(sb)->s_es;
	is_directory = FUNC3(inode->i_mode);

	/* Do this BEFORE marking the inode not in use or returning an error */
	FUNC5 (inode);

	if (ino < FUNC0(sb) ||
	    ino > FUNC12(es->s_inodes_count)) {
		FUNC8 (sb, "ext2_free_inode",
			    "reserved or nonexistent inode %lu", ino);
		goto error_return;
	}
	block_group = (ino - 1) / FUNC1(sb);
	bit = (ino - 1) % FUNC1(sb);
	FUNC4(bitmap_bh);
	bitmap_bh = FUNC14(sb, block_group);
	if (!bitmap_bh)
		goto error_return;

	/* Ok, now we can actually update the inode bitmaps.. */
	if (!FUNC6(FUNC15(FUNC2(sb), block_group),
				bit, (void *) bitmap_bh->b_data))
		FUNC8 (sb, "ext2_free_inode",
			      "bit already cleared for inode %lu", ino);
	else
		FUNC9(sb, block_group, is_directory);
	FUNC13(bitmap_bh);
	if (sb->s_flags & MS_SYNCHRONOUS)
		FUNC16(bitmap_bh);
error_return:
	FUNC4(bitmap_bh);
}