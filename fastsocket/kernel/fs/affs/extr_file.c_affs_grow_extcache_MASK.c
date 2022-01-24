#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct affs_ext_key {int dummy; } ;
struct TYPE_4__ {int* i_lc; int i_lc_shift; int i_extcnt; int i_lc_size; int i_lc_mask; struct affs_ext_key* i_ac; } ;
struct TYPE_3__ {int /*<<< orphan*/  extension; } ;

/* Variables and functions */
 int AFFS_CACHE_SIZE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int AFFS_LC_SIZE ; 
 TYPE_1__* FUNC1 (struct super_block*,struct buffer_head*) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct buffer_head* FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, u32 lc_idx)
{
	struct super_block	*sb = inode->i_sb;
	struct buffer_head	*bh;
	u32 lc_max;
	int i, j, key;

	if (!FUNC0(inode)->i_lc) {
		char *ptr = (char *)FUNC5(GFP_NOFS);
		if (!ptr)
			return -ENOMEM;
		FUNC0(inode)->i_lc = (u32 *)ptr;
		FUNC0(inode)->i_ac = (struct affs_ext_key *)(ptr + AFFS_CACHE_SIZE / 2);
	}

	lc_max = AFFS_LC_SIZE << FUNC0(inode)->i_lc_shift;

	if (FUNC0(inode)->i_extcnt > lc_max) {
		u32 lc_shift, lc_mask, tmp, off;

		/* need to recalculate linear cache, start from old size */
		lc_shift = FUNC0(inode)->i_lc_shift;
		tmp = (FUNC0(inode)->i_extcnt / AFFS_LC_SIZE) >> lc_shift;
		for (; tmp; tmp >>= 1)
			lc_shift++;
		lc_mask = (1 << lc_shift) - 1;

		/* fix idx and old size to new shift */
		lc_idx >>= (lc_shift - FUNC0(inode)->i_lc_shift);
		FUNC0(inode)->i_lc_size >>= (lc_shift - FUNC0(inode)->i_lc_shift);

		/* first shrink old cache to make more space */
		off = 1 << (lc_shift - FUNC0(inode)->i_lc_shift);
		for (i = 1, j = off; j < AFFS_LC_SIZE; i++, j += off)
			FUNC0(inode)->i_ac[i] = FUNC0(inode)->i_ac[j];

		FUNC0(inode)->i_lc_shift = lc_shift;
		FUNC0(inode)->i_lc_mask = lc_mask;
	}

	/* fill cache to the needed index */
	i = FUNC0(inode)->i_lc_size;
	FUNC0(inode)->i_lc_size = lc_idx + 1;
	for (; i <= lc_idx; i++) {
		if (!i) {
			FUNC0(inode)->i_lc[0] = inode->i_ino;
			continue;
		}
		key = FUNC0(inode)->i_lc[i - 1];
		j = FUNC0(inode)->i_lc_mask + 1;
		// unlock cache
		for (; j > 0; j--) {
			bh = FUNC2(sb, key);
			if (!bh)
				goto err;
			key = FUNC4(FUNC1(sb, bh)->extension);
			FUNC3(bh);
		}
		// lock cache
		FUNC0(inode)->i_lc[i] = key;
	}

	return 0;

err:
	// lock cache
	return -EIO;
}