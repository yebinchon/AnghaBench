#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_extent_idx {int dummy; } ;
struct ext4_ext_path {scalar_t__ p_idx; TYPE_1__* p_hdr; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
struct TYPE_2__ {scalar_t__ eh_entries; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,char*) ; 
 int /*<<< orphan*/  EXT4_FREE_BLOCKS_METADATA ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,struct inode*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int) ; 
 struct buffer_head* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(handle_t *handle, struct inode *inode,
			struct ext4_ext_path *path)
{
	struct buffer_head *bh;
	int err;
	ext4_fsblk_t leaf;

	/* free index block */
	path--;
	leaf = FUNC6(path->p_idx);
	if (FUNC11(path->p_hdr->eh_entries == 0)) {
		FUNC0(inode, "path->p_hdr->eh_entries == 0");
		return -EIO;
	}
	err = FUNC3(handle, inode, path);
	if (err)
		return err;

	if (path->p_idx != FUNC1(path->p_hdr)) {
		int len = FUNC1(path->p_hdr) - path->p_idx;
		len *= sizeof(struct ext4_extent_idx);
		FUNC9(path->p_idx, path->p_idx + 1, len);
	}

	FUNC8(&path->p_hdr->eh_entries, -1);
	err = FUNC2(handle, inode, path);
	if (err)
		return err;
	FUNC7("index is empty, remove it, free block %llu\n", leaf);
	bh = FUNC10(inode->i_sb, leaf);
	FUNC4(handle, 1, inode, bh, leaf);
	FUNC5(handle, inode, leaf, 1, EXT4_FREE_BLOCKS_METADATA);
	return err;
}