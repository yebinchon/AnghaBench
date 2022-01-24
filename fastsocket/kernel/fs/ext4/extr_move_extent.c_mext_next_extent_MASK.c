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
struct ext4_extent_header {int /*<<< orphan*/  eh_entries; } ;
struct ext4_extent {int dummy; } ;
struct ext4_ext_path {int p_depth; scalar_t__ p_idx; struct ext4_extent* p_ext; void* p_block; struct ext4_extent_header* p_hdr; void* p_bh; } ;

/* Variables and functions */
 int EIO ; 
 int ENODATA ; 
 struct ext4_extent* FUNC0 (struct ext4_extent_header*) ; 
 scalar_t__ FUNC1 (struct ext4_extent_header*) ; 
 struct ext4_extent* FUNC2 (struct ext4_extent_header*) ; 
 scalar_t__ FUNC3 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (struct ext4_extent*) ; 
 void* FUNC6 (scalar_t__) ; 
 void* FUNC7 (void*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC10(struct inode *inode, struct ext4_ext_path *path,
		      struct ext4_extent **extent)
{
	struct ext4_extent_header *eh;
	int ppos, leaf_ppos = path->p_depth;

	ppos = leaf_ppos;
	if (FUNC2(path[ppos].p_hdr) > path[ppos].p_ext) {
		/* leaf block */
		*extent = ++path[ppos].p_ext;
		path[ppos].p_block = FUNC5(path[ppos].p_ext);
		return 0;
	}

	while (--ppos >= 0) {
		if (FUNC3(path[ppos].p_hdr) >
		    path[ppos].p_idx) {
			int cur_ppos = ppos;

			/* index block */
			path[ppos].p_idx++;
			path[ppos].p_block = FUNC6(path[ppos].p_idx);
			if (path[ppos+1].p_bh)
				FUNC4(path[ppos+1].p_bh);
			path[ppos+1].p_bh =
				FUNC9(inode->i_sb, path[ppos].p_block);
			if (!path[ppos+1].p_bh)
				return -EIO;
			path[ppos+1].p_hdr =
				FUNC7(path[ppos+1].p_bh);

			/* Halfway index block */
			while (++cur_ppos < leaf_ppos) {
				path[cur_ppos].p_idx =
					FUNC1(path[cur_ppos].p_hdr);
				path[cur_ppos].p_block =
					FUNC6(path[cur_ppos].p_idx);
				if (path[cur_ppos+1].p_bh)
					FUNC4(path[cur_ppos+1].p_bh);
				path[cur_ppos+1].p_bh = FUNC9(inode->i_sb,
					path[cur_ppos].p_block);
				if (!path[cur_ppos+1].p_bh)
					return -EIO;
				path[cur_ppos+1].p_hdr =
					FUNC7(path[cur_ppos+1].p_bh);
			}

			path[leaf_ppos].p_ext = *extent = NULL;

			eh = path[leaf_ppos].p_hdr;
			if (FUNC8(eh->eh_entries) == 0)
				/* empty leaf is found */
				return -ENODATA;

			/* leaf block */
			path[leaf_ppos].p_ext = *extent =
				FUNC0(path[leaf_ppos].p_hdr);
			path[leaf_ppos].p_block =
					FUNC5(path[leaf_ppos].p_ext);
			return 0;
		}
	}
	/* We found the last extent */
	return 1;
}