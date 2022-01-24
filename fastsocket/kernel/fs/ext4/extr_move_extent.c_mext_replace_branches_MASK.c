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
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_ext_path*) ; 
 int FUNC4 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,scalar_t__,struct ext4_ext_path**) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ext4_extent*,struct ext4_extent*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,struct ext4_extent*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC12(handle_t *handle, struct inode *orig_inode,
			   struct inode *donor_inode, ext4_lblk_t from,
			   ext4_lblk_t count, int *err)
{
	struct ext4_ext_path *orig_path = NULL;
	struct ext4_ext_path *donor_path = NULL;
	struct ext4_extent *oext, *dext;
	struct ext4_extent tmp_dext, tmp_oext;
	ext4_lblk_t orig_off = from, donor_off = from;
	int depth;
	int replaced_count = 0;
	int dext_alen;

	/* Protect extent trees against block allocations via delalloc */
	FUNC0(orig_inode, donor_inode);

	/* Get the original extent for the block "orig_off" */
	*err = FUNC7(orig_inode, orig_off, &orig_path);
	if (*err)
		goto out;

	/* Get the donor extent for the head */
	*err = FUNC7(donor_inode, donor_off, &donor_path);
	if (*err)
		goto out;
	depth = FUNC6(orig_inode);
	oext = orig_path[depth].p_ext;
	tmp_oext = *oext;

	depth = FUNC6(donor_inode);
	dext = donor_path[depth].p_ext;
	tmp_dext = *dext;

	*err = FUNC10(&tmp_dext, &tmp_oext, orig_off,
				      donor_off, count);
	if (*err)
		goto out;

	/* Loop for the donor extents */
	while (1) {
		/* The extent for donor must be found. */
		if (!dext) {
			FUNC2(donor_inode->i_sb,
				   "The extent for donor must be found");
			*err = -EIO;
			goto out;
		} else if (donor_off != FUNC9(tmp_dext.ee_block)) {
			FUNC2(donor_inode->i_sb,
				"Donor offset(%u) and the first block of donor "
				"extent(%u) should be equal",
				donor_off,
				FUNC9(tmp_dext.ee_block));
			*err = -EIO;
			goto out;
		}

		/* Set donor extent to orig extent */
		*err = FUNC11(handle, orig_inode,
					   orig_path, &tmp_dext, &orig_off);
		if (*err)
			goto out;

		/* Set orig extent to donor extent */
		*err = FUNC11(handle, donor_inode,
					   donor_path, &tmp_oext, &donor_off);
		if (*err)
			goto out;

		dext_alen = FUNC4(&tmp_dext);
		replaced_count += dext_alen;
		donor_off += dext_alen;
		orig_off += dext_alen;

		/* Already moved the expected blocks */
		if (replaced_count >= count)
			break;

		if (orig_path)
			FUNC3(orig_path);
		*err = FUNC7(orig_inode, orig_off, &orig_path);
		if (*err)
			goto out;
		depth = FUNC6(orig_inode);
		oext = orig_path[depth].p_ext;
		tmp_oext = *oext;

		if (donor_path)
			FUNC3(donor_path);
		*err = FUNC7(donor_inode, donor_off, &donor_path);
		if (*err)
			goto out;
		depth = FUNC6(donor_inode);
		dext = donor_path[depth].p_ext;
		tmp_dext = *dext;

		*err = FUNC10(&tmp_dext, &tmp_oext, orig_off,
					   donor_off, count - replaced_count);
		if (*err)
			goto out;
	}

out:
	if (orig_path) {
		FUNC3(orig_path);
		FUNC8(orig_path);
	}
	if (donor_path) {
		FUNC3(donor_path);
		FUNC8(donor_path);
	}

	FUNC5(orig_inode);
	FUNC5(donor_inode);

	FUNC1(orig_inode, donor_inode);

	return replaced_count;
}