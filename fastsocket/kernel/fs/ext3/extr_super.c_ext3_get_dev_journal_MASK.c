#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_blocksize; int /*<<< orphan*/  s_bdev; } ;
struct ext3_super_block {int /*<<< orphan*/  s_blocks_count; int /*<<< orphan*/  s_uuid; int /*<<< orphan*/  s_feature_incompat; int /*<<< orphan*/  s_magic; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct block_device {int dummy; } ;
struct TYPE_11__ {TYPE_2__* j_superblock; int /*<<< orphan*/  j_sb_buffer; struct super_block* j_private; } ;
typedef  TYPE_3__ journal_t ;
typedef  int ext3_fsblk_t ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_12__ {struct block_device* journal_bdev; TYPE_1__* s_es; } ;
struct TYPE_10__ {int /*<<< orphan*/  s_nr_users; } ;
struct TYPE_9__ {int /*<<< orphan*/  s_journal_uuid; } ;

/* Variables and functions */
 int EXT3_FEATURE_INCOMPAT_JOURNAL_DEV ; 
 int EXT3_MIN_BLOCK_SIZE ; 
 TYPE_8__* FUNC0 (struct super_block*) ; 
 scalar_t__ EXT3_SUPER_MAGIC ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  READ ; 
 struct buffer_head* FUNC1 (struct block_device*,int,int) ; 
 scalar_t__ FUNC2 (struct block_device*,struct super_block*) ; 
 int FUNC3 (struct block_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct block_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct block_device* FUNC8 (int /*<<< orphan*/ ,struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 TYPE_3__* FUNC13 (struct block_device*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct block_device*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static journal_t *FUNC20(struct super_block *sb,
				       dev_t j_dev)
{
	struct buffer_head * bh;
	journal_t *journal;
	ext3_fsblk_t start;
	ext3_fsblk_t len;
	int hblock, blocksize;
	ext3_fsblk_t sb_block;
	unsigned long offset;
	struct ext3_super_block * es;
	struct block_device *bdev;

	bdev = FUNC8(j_dev, sb);
	if (bdev == NULL)
		return NULL;

	if (FUNC2(bdev, sb)) {
		FUNC11(sb, KERN_ERR,
			"error: failed to claim external journal device");
		FUNC5(bdev, FMODE_READ|FMODE_WRITE);
		return NULL;
	}

	blocksize = sb->s_blocksize;
	hblock = FUNC3(bdev);
	if (blocksize < hblock) {
		FUNC11(sb, KERN_ERR,
			"error: blocksize too small for journal device");
		goto out_bdev;
	}

	sb_block = EXT3_MIN_BLOCK_SIZE / blocksize;
	offset = EXT3_MIN_BLOCK_SIZE % blocksize;
	FUNC18(bdev, blocksize);
	if (!(bh = FUNC1(bdev, sb_block, blocksize))) {
		FUNC11(sb, KERN_ERR, "error: couldn't read superblock of "
			"external journal");
		goto out_bdev;
	}

	es = (struct ext3_super_block *) (((char *)bh->b_data) + offset);
	if ((FUNC14(es->s_magic) != EXT3_SUPER_MAGIC) ||
	    !(FUNC15(es->s_feature_incompat) &
	      EXT3_FEATURE_INCOMPAT_JOURNAL_DEV)) {
		FUNC11(sb, KERN_ERR, "error: external journal has "
			"bad superblock");
		FUNC6(bh);
		goto out_bdev;
	}

	if (FUNC17(FUNC0(sb)->s_es->s_journal_uuid, es->s_uuid, 16)) {
		FUNC11(sb, KERN_ERR, "error: journal UUID does not match");
		FUNC6(bh);
		goto out_bdev;
	}

	len = FUNC15(es->s_blocks_count);
	start = sb_block + 1;
	FUNC6(bh);	/* we're done with the superblock */

	journal = FUNC13(bdev, sb->s_bdev,
					start, len, blocksize);
	if (!journal) {
		FUNC11(sb, KERN_ERR,
			"error: failed to create device journal");
		goto out_bdev;
	}
	journal->j_private = sb;
	FUNC16(READ, 1, &journal->j_sb_buffer);
	FUNC19(journal->j_sb_buffer);
	if (!FUNC7(journal->j_sb_buffer)) {
		FUNC11(sb, KERN_ERR, "I/O error on journal device");
		goto out_journal;
	}
	if (FUNC4(journal->j_superblock->s_nr_users) != 1) {
		FUNC11(sb, KERN_ERR,
			"error: external journal has more than one "
			"user (unsupported) - %d",
			FUNC4(journal->j_superblock->s_nr_users));
		goto out_journal;
	}
	FUNC0(sb)->journal_bdev = bdev;
	FUNC10(sb, journal);
	return journal;
out_journal:
	FUNC12(journal);
out_bdev:
	FUNC9(bdev);
	return NULL;
}