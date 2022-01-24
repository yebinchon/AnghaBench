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
struct ext4_extent_header {int /*<<< orphan*/  eh_max; int /*<<< orphan*/  eh_entries; } ;
struct ext4_ext_path {short p_depth; int /*<<< orphan*/ * p_ext; int /*<<< orphan*/  p_block; int /*<<< orphan*/ * p_idx; struct ext4_extent_header* p_hdr; struct buffer_head* p_bh; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ext4_ext_path* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,char*,short,short) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct ext4_ext_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct ext4_ext_path*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct inode*,struct ext4_extent_header*,short,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct ext4_extent_header* FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (char*,short,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 short FUNC13 (struct inode*) ; 
 struct ext4_extent_header* FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 struct buffer_head* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int) ; 

struct ext4_ext_path *
FUNC21(struct inode *inode, ext4_lblk_t block,
					struct ext4_ext_path *path)
{
	struct ext4_extent_header *eh;
	struct buffer_head *bh;
	short int depth, i, ppos = 0, alloc = 0;

	eh = FUNC14(inode);
	depth = FUNC13(inode);

	/* account possible depth increase */
	if (!path) {
		path = FUNC16(sizeof(struct ext4_ext_path) * (depth + 2),
				GFP_NOFS);
		if (!path)
			return FUNC0(-ENOMEM);
		alloc = 1;
	}
	path[0].p_hdr = eh;
	path[0].p_bh = NULL;

	i = depth;
	/* walk through the tree */
	while (i) {
		FUNC12("depth %d: num %d, max %d\n",
			  ppos, FUNC17(eh->eh_entries), FUNC17(eh->eh_max));

		FUNC5(inode, path + ppos, block);
		path[ppos].p_block = FUNC10(path[ppos].p_idx);
		path[ppos].p_depth = i;
		path[ppos].p_ext = NULL;

		bh = FUNC19(inode->i_sb, path[ppos].p_block);
		if (FUNC20(!bh))
			goto err;
		if (!FUNC3(bh)) {
			if (FUNC2(bh) < 0) {
				FUNC18(bh);
				goto err;
			}
		}
		eh = FUNC11(bh);
		ppos++;
		if (FUNC20(ppos > depth)) {
			FUNC18(bh);
			FUNC1(inode,
					 "ppos %d > depth %d", ppos, depth);
			goto err;
		}
		path[ppos].p_bh = bh;
		path[ppos].p_hdr = eh;
		i--;

		if (FUNC6(inode, eh, i, bh))
			goto err;
	}

	path[ppos].p_depth = i;
	path[ppos].p_ext = NULL;
	path[ppos].p_idx = NULL;

	/* find extent */
	FUNC4(inode, path + ppos, block);
	/* if not an empty leaf */
	if (path[ppos].p_ext)
		path[ppos].p_block = FUNC8(path[ppos].p_ext);

	FUNC9(inode, path);

	return path;

err:
	FUNC7(path);
	if (alloc)
		FUNC15(path);
	return FUNC0(-EIO);
}