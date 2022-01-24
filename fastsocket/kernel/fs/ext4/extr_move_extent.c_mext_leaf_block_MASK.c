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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_extent {void* ee_block; void* ee_len; } ;
struct ext4_ext_path {int /*<<< orphan*/  p_hdr; struct ext4_extent* p_ext; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int EIO ; 
 struct ext4_extent* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_extent*,struct ext4_extent*) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct inode*,struct ext4_extent*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC6 (struct ext4_extent*) ; 
 scalar_t__ FUNC7 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_extent*,scalar_t__) ; 
 int FUNC9 (struct inode*) ; 
 int FUNC10 (void*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*) ; 

__attribute__((used)) static int
FUNC12(handle_t *handle, struct inode *orig_inode,
		     struct ext4_ext_path *orig_path, struct ext4_extent *dext,
		     ext4_lblk_t *from)
{
	struct ext4_extent *oext, *o_start, *o_end, *prev_ext;
	struct ext4_extent new_ext, start_ext, end_ext;
	ext4_lblk_t new_ext_end;
	ext4_fsblk_t new_phys_end;
	int oext_alen, new_ext_alen, end_ext_alen;
	int depth = FUNC9(orig_inode);
	int ret;

	o_start = o_end = oext = orig_path[depth].p_ext;
	oext_alen = FUNC6(oext);
	start_ext.ee_len = end_ext.ee_len = 0;

	new_ext.ee_block = FUNC3(*from);
	FUNC8(&new_ext, FUNC7(dext));
	new_ext.ee_len = dext->ee_len;
	new_ext_alen = FUNC6(&new_ext);
	new_ext_end = FUNC10(new_ext.ee_block) + new_ext_alen - 1;
	new_phys_end = FUNC7(&new_ext) + new_ext_alen - 1;

	/*
	 * Case: original extent is first
	 * oext      |--------|
	 * new_ext      |--|
	 * start_ext |--|
	 */
	if (FUNC10(oext->ee_block) < FUNC10(new_ext.ee_block) &&
		FUNC10(new_ext.ee_block) <
		FUNC10(oext->ee_block) + oext_alen) {
		start_ext.ee_len = FUNC2(FUNC10(new_ext.ee_block) -
					       FUNC10(oext->ee_block));
		FUNC1(oext, &start_ext);
	} else if (oext > FUNC0(orig_path[depth].p_hdr)) {
		prev_ext = oext - 1;
		/*
		 * We can merge new_ext into previous extent,
		 * if these are contiguous and same extent type.
		 */
		if (FUNC4(orig_inode, prev_ext,
					       &new_ext)) {
			o_start = prev_ext;
			start_ext.ee_len = FUNC2(
				FUNC6(prev_ext) +
				new_ext_alen);
			FUNC1(prev_ext, &start_ext);
			new_ext.ee_len = 0;
		}
	}

	/*
	 * Case: new_ext_end must be less than oext
	 * oext      |-----------|
	 * new_ext       |-------|
	 */
	if (FUNC10(oext->ee_block) + oext_alen - 1 < new_ext_end) {
		FUNC5(orig_inode->i_sb,
			"new_ext_end(%u) should be less than or equal to "
			"oext->ee_block(%u) + oext_alen(%d) - 1",
			new_ext_end, FUNC10(oext->ee_block),
			oext_alen);
		ret = -EIO;
		goto out;
	}

	/*
	 * Case: new_ext is smaller than original extent
	 * oext    |---------------|
	 * new_ext |-----------|
	 * end_ext             |---|
	 */
	if (FUNC10(oext->ee_block) <= new_ext_end &&
		new_ext_end < FUNC10(oext->ee_block) + oext_alen - 1) {
		end_ext.ee_len =
			FUNC2(FUNC10(oext->ee_block) +
			oext_alen - 1 - new_ext_end);
		FUNC1(oext, &end_ext);
		end_ext_alen = FUNC6(&end_ext);
		FUNC8(&end_ext,
			(FUNC7(o_end) + oext_alen - end_ext_alen));
		end_ext.ee_block =
			FUNC3(FUNC10(o_end->ee_block) +
			oext_alen - end_ext_alen);
	}

	ret = FUNC11(handle, orig_inode, orig_path, o_start,
				o_end, &start_ext, &new_ext, &end_ext);
out:
	return ret;
}