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
struct reiserfs_key {int dummy; } ;
struct disk_child {int dummy; } ;
struct buffer_info {struct buffer_head* bi_parent; int /*<<< orphan*/  tb; int /*<<< orphan*/  bi_position; struct buffer_head* bi_bh; } ;
struct buffer_head {int dummy; } ;
struct block_head {int dummy; } ;

/* Variables and functions */
 struct block_head* FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct buffer_head*) ; 
 struct disk_child* FUNC3 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 struct reiserfs_key* FUNC4 (struct buffer_head*,int) ; 
 int DC_SIZE ; 
 int KEY_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 scalar_t__ FUNC6 (struct block_head*) ; 
 int FUNC7 (struct block_head*) ; 
 scalar_t__ FUNC8 (struct disk_child*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct reiserfs_key*,struct reiserfs_key*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct reiserfs_key*,struct reiserfs_key*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct disk_child*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct block_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct block_head*,int) ; 

__attribute__((used)) static void FUNC15(struct buffer_info *dest_bi, int dest_position_before,	/* insert key before key with n_dest number */
				struct buffer_head *src, int src_position)
{
	struct buffer_head *dest = dest_bi->bi_bh;
	int nr;
	struct block_head *blkh;
	struct reiserfs_key *key;

	FUNC5(dest == NULL || src == NULL,
	       "source(%p) or dest(%p) buffer is 0", src, dest);
	FUNC5(dest_position_before < 0 || src_position < 0,
	       "source(%d) or dest(%d) key number less than 0",
	       src_position, dest_position_before);
	FUNC5(dest_position_before > FUNC2(dest) ||
	       src_position >= FUNC2(src),
	       "invalid position in dest (%d (key number %d)) or in src (%d (key number %d))",
	       dest_position_before, FUNC2(dest),
	       src_position, FUNC2(src));
	FUNC5(FUNC1(dest) < KEY_SIZE,
	       "no enough free space (%d) in dest buffer", FUNC1(dest));

	blkh = FUNC0(dest);
	nr = FUNC7(blkh);

	/* prepare space for inserting key */
	key = FUNC4(dest, dest_position_before);
	FUNC11(key + 1, key,
		(nr - dest_position_before) * KEY_SIZE + (nr + 1) * DC_SIZE);

	/* insert key */
	FUNC10(key, FUNC4(src, src_position), KEY_SIZE);

	/* Change dirt, free space, item number fields. */

	FUNC14(blkh, FUNC7(blkh) + 1);
	FUNC13(blkh, FUNC6(blkh) - KEY_SIZE);

	FUNC9(dest_bi->tb, dest, 0);

	if (dest_bi->bi_parent) {
		struct disk_child *t_dc;
		t_dc = FUNC3(dest_bi->bi_parent, dest_bi->bi_position);
		FUNC12(t_dc, FUNC8(t_dc) + KEY_SIZE);

		FUNC9(dest_bi->tb, dest_bi->bi_parent,
					       0);
	}
}