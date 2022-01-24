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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_EXT_DATA_VALID ; 
 scalar_t__ FUNC0 (struct ext4_ext_path*) ; 
 int FUNC1 (struct ext4_ext_path*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC4 (struct inode*,scalar_t__,struct ext4_ext_path*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 unsigned int FUNC6 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct ext4_ext_path*,struct ext4_extent*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,unsigned long long,unsigned int) ; 
 int FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(handle_t *handle,
					      struct inode *inode,
					      ext4_lblk_t iblock,
					      unsigned int max_blocks,
					      struct ext4_ext_path *path)
{
	struct ext4_extent *ex;
	ext4_lblk_t ee_block;
	unsigned int ee_len;
	struct ext4_extent_header *eh;
	int depth;
	int err = 0;

	depth = FUNC12(inode);
	eh = path[depth].p_hdr;
	ex = path[depth].p_ext;
	ee_block = FUNC13(ex->ee_block);
	ee_len = FUNC6(ex);

	FUNC11("ext4_convert_unwritten_extents_endio: inode %lu, logical"
		  "block %llu, max_blocks %u\n", inode->i_ino,
		  (unsigned long long)ee_block, ee_len);

	/* If extent is larger than requested then split is required */

	if (ee_block != iblock || ee_len > max_blocks) {
		err = FUNC10(handle, inode, path,
					iblock, max_blocks,
					EXT4_EXT_DATA_VALID);
		if (err < 0)
			goto out;
		FUNC3(path);
		path = FUNC4(inode, iblock, path);
		if (FUNC0(path)) {
			err = FUNC1(path);
			goto out;
		}
		depth = FUNC12(inode);
		ex = path[depth].p_ext;
	}

	err = FUNC5(handle, inode, path + depth);
	if (err)
		goto out;
	/* first mark the extent as initialized */
	FUNC7(ex);

	/* note: ext4_ext_correct_indexes() isn't needed here because
	 * borders are not changed
	 */
	FUNC9(inode, path, ex);

	/* Mark modified extent as dirty */
	err = FUNC2(handle, inode, path + depth);
out:
	FUNC8(inode, path);
	return err;
}