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
struct reiserfs_super_block {int dummy; } ;
struct buffer_head {int b_blocknr; int /*<<< orphan*/  b_bdev; scalar_t__ b_data; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 scalar_t__ REISERFS_VERSION_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct reiserfs_super_block*) ; 
 scalar_t__ FUNC2 (struct reiserfs_super_block*) ; 
 scalar_t__ FUNC3 (struct reiserfs_super_block*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct reiserfs_super_block*) ; 
 int FUNC7 (struct reiserfs_super_block*) ; 
 int FUNC8 (struct reiserfs_super_block*) ; 
 int FUNC9 (struct reiserfs_super_block*) ; 
 int FUNC10 (struct reiserfs_super_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct reiserfs_super_block*) ; 
 int FUNC12 (struct reiserfs_super_block*) ; 
 int FUNC13 (struct reiserfs_super_block*) ; 
 int FUNC14 (struct reiserfs_super_block*) ; 
 int FUNC15 (struct reiserfs_super_block*) ; 
 int FUNC16 (struct reiserfs_super_block*) ; 
 int FUNC17 (struct reiserfs_super_block*) ; 
 scalar_t__ FUNC18 (struct reiserfs_super_block*) ; 

__attribute__((used)) static int FUNC19(struct buffer_head *bh)
{
	struct reiserfs_super_block *rs =
	    (struct reiserfs_super_block *)(bh->b_data);
	int skipped, data_blocks;
	char *version;
	char b[BDEVNAME_SIZE];

	if (FUNC1(rs)) {
		version = "3.5";
	} else if (FUNC2(rs)) {
		version = "3.6";
	} else if (FUNC3(rs)) {
		version = ((FUNC18(rs) == REISERFS_VERSION_2) ?
			   "3.6" : "3.5");
	} else {
		return 1;
	}

	FUNC4("%s\'s super block is in block %llu\n", FUNC0(bh->b_bdev, b),
	       (unsigned long long)bh->b_blocknr);
	FUNC4("Reiserfs version %s\n", version);
	FUNC4("Block count %u\n", FUNC6(rs));
	FUNC4("Blocksize %d\n", FUNC7(rs));
	FUNC4("Free blocks %u\n", FUNC9(rs));
	// FIXME: this would be confusing if
	// someone stores reiserfs super block in some data block ;)
//    skipped = (bh->b_blocknr * bh->b_size) / sb_blocksize(rs);
	skipped = bh->b_blocknr;
	data_blocks = FUNC6(rs) - skipped - 1 - FUNC8(rs) -
	    (!FUNC3(rs) ? FUNC14(rs) +
	     1 : FUNC15(rs)) - FUNC9(rs);
	FUNC4
	    ("Busy blocks (skipped %d, bitmaps - %d, journal (or reserved) blocks - %d\n"
	     "1 super block, %d data blocks\n", skipped, FUNC8(rs),
	     (!FUNC3(rs) ? (FUNC14(rs) + 1) :
	      FUNC15(rs)), data_blocks);
	FUNC4("Root block %u\n", FUNC16(rs));
	FUNC4("Journal block (first) %d\n", FUNC12(rs));
	FUNC4("Journal dev %d\n", FUNC13(rs));
	FUNC4("Journal orig size %d\n", FUNC14(rs));
	FUNC4("FS state %d\n", FUNC10(rs));
	FUNC4("Hash function \"%s\"\n",
	       FUNC5(FUNC11(rs)));

	FUNC4("Tree height %d\n", FUNC17(rs));
	return 0;
}