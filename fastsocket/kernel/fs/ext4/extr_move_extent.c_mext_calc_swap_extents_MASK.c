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
struct ext4_extent {void* ee_len; int /*<<< orphan*/  ee_block; } ;
typedef  int ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODATA ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_extent*,struct ext4_extent*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ext4_extent*) ; 
 int FUNC5 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC6 (struct ext4_extent*,int) ; 
 int FUNC7 (void*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct ext4_extent *tmp_dext,
			      struct ext4_extent *tmp_oext,
			      ext4_lblk_t orig_off, ext4_lblk_t donor_off,
			      ext4_lblk_t max_count)
{
	ext4_lblk_t diff, orig_diff;
	struct ext4_extent dext_old, oext_old;

	FUNC0(orig_off != donor_off);

	/* original and donor extents have to cover the same block offset */
	if (orig_off < FUNC8(tmp_oext->ee_block) ||
	    FUNC8(tmp_oext->ee_block) +
			FUNC4(tmp_oext) - 1 < orig_off)
		return -ENODATA;

	if (orig_off < FUNC8(tmp_dext->ee_block) ||
	    FUNC8(tmp_dext->ee_block) +
			FUNC4(tmp_dext) - 1 < orig_off)
		return -ENODATA;

	dext_old = *tmp_dext;
	oext_old = *tmp_oext;

	/* When tmp_dext is too large, pick up the target range. */
	diff = donor_off - FUNC8(tmp_dext->ee_block);

	FUNC6(tmp_dext, FUNC5(tmp_dext) + diff);
	tmp_dext->ee_block =
			FUNC3(FUNC8(tmp_dext->ee_block) + diff);
	tmp_dext->ee_len = FUNC2(FUNC7(tmp_dext->ee_len) - diff);

	if (max_count < FUNC4(tmp_dext))
		tmp_dext->ee_len = FUNC2(max_count);

	orig_diff = orig_off - FUNC8(tmp_oext->ee_block);
	FUNC6(tmp_oext, FUNC5(tmp_oext) + orig_diff);

	/* Adjust extent length if donor extent is larger than orig */
	if (FUNC4(tmp_dext) >
	    FUNC4(tmp_oext) - orig_diff)
		tmp_dext->ee_len = FUNC2(FUNC7(tmp_oext->ee_len) -
						orig_diff);

	tmp_oext->ee_len = FUNC2(FUNC4(tmp_dext));

	FUNC1(&oext_old, tmp_dext);
	FUNC1(&dext_old, tmp_oext);

	return 0;
}