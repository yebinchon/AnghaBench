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
typedef  int u32 ;
typedef  int u16 ;
struct ocfs2_blockcheck_stats {int dummy; } ;
struct ocfs2_block_check {int bc_crc32e; int bc_ecc; } ;
struct buffer_head {int b_size; int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_block_check*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_blockcheck_stats*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_blockcheck_stats*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_blockcheck_stats*) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int) ; 

int FUNC13(struct buffer_head **bhs, int nr,
				   struct ocfs2_block_check *bc,
				   struct ocfs2_blockcheck_stats *stats)
{
	int i, rc = 0;
	struct ocfs2_block_check check;
	u32 crc, ecc, fix;

	FUNC0(nr < 0);

	if (!nr)
		return 0;

	FUNC8(stats);

	check.bc_crc32e = FUNC5(bc->bc_crc32e);
	check.bc_ecc = FUNC4(bc->bc_ecc);

	FUNC6(bc, 0, sizeof(struct ocfs2_block_check));

	/* Fast path - if the crc32 validates, we're good to go */
	for (i = 0, crc = ~0; i < nr; i++)
		crc = FUNC3(crc, bhs[i]->b_data, bhs[i]->b_size);
	if (crc == check.bc_crc32e)
		goto out;

	FUNC9(stats);
	FUNC7(ML_ERROR,
	     "CRC32 failed: stored: %u, computed %u.  Applying ECC.\n",
	     (unsigned int)check.bc_crc32e, (unsigned int)crc);

	/* Ok, try ECC fixups */
	for (i = 0, ecc = 0; i < nr; i++) {
		/*
		 * The number of bits in a buffer is obviously b_size*8.
		 * The offset of this buffer is b_size*i, so the bit offset
		 * of this buffer is b_size*8*i.
		 */
		ecc = (u16)FUNC11(ecc, bhs[i]->b_data,
						bhs[i]->b_size * 8,
						bhs[i]->b_size * 8 * i);
	}
	fix = ecc ^ check.bc_ecc;
	for (i = 0; i < nr; i++) {
		/*
		 * Try the fix against each buffer.  It will only affect
		 * one of them.
		 */
		FUNC12(bhs[i]->b_data, bhs[i]->b_size * 8,
				  bhs[i]->b_size * 8 * i, fix);
	}

	/* And check the crc32 again */
	for (i = 0, crc = ~0; i < nr; i++)
		crc = FUNC3(crc, bhs[i]->b_data, bhs[i]->b_size);
	if (crc == check.bc_crc32e) {
		FUNC10(stats);
		goto out;
	}

	FUNC7(ML_ERROR, "Fixed CRC32 failed: stored: %u, computed %u\n",
	     (unsigned int)check.bc_crc32e, (unsigned int)crc);

	rc = -EIO;

out:
	bc->bc_crc32e = FUNC2(check.bc_crc32e);
	bc->bc_ecc = FUNC1(check.bc_ecc);

	return rc;
}