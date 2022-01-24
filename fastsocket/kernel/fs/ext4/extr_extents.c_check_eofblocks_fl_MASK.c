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
struct inode {int dummy; } ;
struct ext4_extent_header {int /*<<< orphan*/  eh_entries; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {scalar_t__ p_idx; struct ext4_extent_header* p_hdr; struct ext4_extent* p_ext; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_INODE_EOFBLOCKS ; 
 struct ext4_extent* FUNC0 (struct ext4_extent_header*) ; 
 scalar_t__ FUNC1 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ext4_extent*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(handle_t *handle, struct inode *inode,
			      ext4_lblk_t iblock,
			      struct ext4_ext_path *path,
			      unsigned int len)
{
	int i, depth;
	struct ext4_extent_header *eh;
	struct ext4_extent *ex, *last_ex;

	if (!FUNC5(inode, EXT4_INODE_EOFBLOCKS))
		return 0;

	depth = FUNC6(inode);
	eh = path[depth].p_hdr;
	ex = path[depth].p_ext;

	/*
	 * We're going to remove EOFBLOCKS_FL entirely in future so we
	 * do not care for this case anymore. Simply remove the flag
	 * if there are no extents.
	 */
	if (FUNC8(!eh->eh_entries))
		goto out;
	last_ex = FUNC0(eh);
	/*
	 * We should clear the EOFBLOCKS_FL flag if we are writing the
	 * last block in the last extent in the file.  We test this by
	 * first checking to see if the caller to
	 * ext4_ext_get_blocks() was interested in the last block (or
	 * a block beyond the last block) in the current extent.  If
	 * this turns out to be false, we can bail out from this
	 * function immediately.
	 */
	if (iblock + len < FUNC7(last_ex->ee_block) +
	    FUNC3(last_ex))
		return 0;
	/*
	 * If the caller does appear to be planning to write at or
	 * beyond the end of the current extent, we then test to see
	 * if the current extent is the last extent in the file, by
	 * checking to make sure it was reached via the rightmost node
	 * at each level of the tree.
	 */
	for (i = depth-1; i >= 0; i--)
		if (path[i].p_idx != FUNC1(path[i].p_hdr))
			return 0;
out:
	FUNC2(inode, EXT4_INODE_EOFBLOCKS);
	return FUNC4(handle, inode);
}