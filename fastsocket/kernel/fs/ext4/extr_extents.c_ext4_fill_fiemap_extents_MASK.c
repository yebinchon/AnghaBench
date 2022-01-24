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
struct inode {TYPE_1__* i_sb; } ;
struct fiemap_extent_info {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; int /*<<< orphan*/ * p_hdr; } ;
struct ext4_ext_cache {scalar_t__ ec_block; scalar_t__ ec_len; int ec_start; } ;
typedef  scalar_t__ ext4_lblk_t ;
typedef  unsigned char __u64 ;
struct TYPE_4__ {int /*<<< orphan*/  i_data_sem; } ;
struct TYPE_3__ {unsigned char s_blocksize_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char*,...) ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 unsigned int FIEMAP_EXTENT_DELALLOC ; 
 unsigned int FIEMAP_EXTENT_LAST ; 
 unsigned int FIEMAP_EXTENT_UNWRITTEN ; 
 scalar_t__ FUNC4 (struct ext4_ext_path*) ; 
 int FUNC5 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC8 (struct inode*,scalar_t__,struct ext4_ext_path*) ; 
 scalar_t__ FUNC9 (struct ext4_extent*) ; 
 scalar_t__ FUNC10 (struct ext4_extent*) ; 
 scalar_t__ FUNC11 (struct ext4_ext_path*) ; 
 int FUNC12 (struct ext4_extent*) ; 
 scalar_t__ FUNC13 (struct inode*,struct ext4_ext_cache*) ; 
 int FUNC14 (struct inode*) ; 
 int FUNC15 (struct fiemap_extent_info*,unsigned char,unsigned char,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct inode *inode,
				    ext4_lblk_t block, ext4_lblk_t num,
				    struct fiemap_extent_info *fieinfo)
{
	struct ext4_ext_path *path = NULL;
	struct ext4_ext_cache cbex;
	struct ext4_extent *ex;
	ext4_lblk_t next, next_del, start = 0, end = 0;
	ext4_lblk_t last = block + num;
	int exists, depth = 0, err = 0;
	unsigned int flags = 0;
	unsigned char blksize_bits = inode->i_sb->s_blocksize_bits;

	while (block < last && block != EXT_MAX_BLOCKS) {
		num = last - block;
		/* find extent for this block */
		FUNC6(&FUNC3(inode)->i_data_sem);

		if (path && FUNC14(inode) != depth) {
			/* depth was changed. we have to realloc path */
			FUNC16(path);
			path = NULL;
		}

		path = FUNC8(inode, block, path);
		if (FUNC4(path)) {
			FUNC19(&FUNC3(inode)->i_data_sem);
			err = FUNC5(path);
			path = NULL;
			break;
		}

		depth = FUNC14(inode);
		if (FUNC18(path[depth].p_hdr == NULL)) {
			FUNC19(&FUNC3(inode)->i_data_sem);
			FUNC2(inode, "path[%d].p_hdr == NULL", depth);
			err = -EIO;
			break;
		}
		ex = path[depth].p_ext;
		next = FUNC11(path);
		FUNC7(path);

		flags = 0;
		exists = 0;
		if (!ex) {
			/* there is no extent yet, so try to allocate
			 * all requested space */
			start = block;
			end = block + num;
		} else if (FUNC17(ex->ee_block) > block) {
			/* need to allocate space before found extent */
			start = block;
			end = FUNC17(ex->ee_block);
			if (block + num < end)
				end = block + num;
		} else if (block >= FUNC17(ex->ee_block)
					+ FUNC9(ex)) {
			/* need to allocate space after found extent */
			start = block;
			end = block + num;
			if (end >= next)
				end = next;
		} else if (block >= FUNC17(ex->ee_block)) {
			/*
			 * some part of requested space is covered
			 * by found extent
			 */
			start = block;
			end = FUNC17(ex->ee_block)
				+ FUNC9(ex);
			if (block + num < end)
				end = block + num;
			exists = 1;
		} else {
			FUNC0();
		}
		FUNC1(end <= start);

		if (!exists) {
			cbex.ec_block = start;
			cbex.ec_len = end - start;
			cbex.ec_start = 0;
		} else {
			cbex.ec_block = FUNC17(ex->ee_block);
			cbex.ec_len = FUNC9(ex);
			cbex.ec_start = FUNC12(ex);
			if (FUNC10(ex))
				flags |= FIEMAP_EXTENT_UNWRITTEN;
		}

		/*
		 * Find delayed extent and update cbex accordingly. We call
		 * it even in !exists case to find out whether cbex is the
		 * last existing extent or not.
		 */
		next_del = FUNC13(inode, &cbex);
		if (!exists && (next_del != EXT_MAX_BLOCKS)) {
			struct ext4_ext_cache cbex2;

			exists = 1;
			flags |= FIEMAP_EXTENT_DELALLOC;

			/*
			 * Find out whether this delayed extent is the last
			 * one. If so 'next_del' would be set to 0 and
			 * FIEMAP_EXTENT_LAST will be set later.
			 */
			cbex2.ec_start = 1;
			cbex2.ec_block = cbex.ec_block + cbex.ec_len;
			cbex2.ec_len = next - cbex2.ec_block;
			next_del = FUNC13(inode, &cbex2);
		}
		FUNC19(&FUNC3(inode)->i_data_sem);

		if (FUNC18(cbex.ec_len == 0)) {
			FUNC2(inode, "cbex.ec_len == 0");
			err = -EIO;
			break;
		}

		/* This is possible iff next == next_del == EXT_MAX_BLOCKS */
		if (next == next_del && next == EXT_MAX_BLOCKS)
			flags |= FIEMAP_EXTENT_LAST;

		if (exists) {
			err = FUNC15(fieinfo,
				(__u64)cbex.ec_block << blksize_bits,
				(__u64)cbex.ec_start << blksize_bits,
				(__u64)cbex.ec_len << blksize_bits,
				flags);
			if (err < 0)
				break;
			if (err == 1) {
				err = 0;
				break;
			}
		}

		block = cbex.ec_block + cbex.ec_len;
	}

	if (path) {
		FUNC7(path);
		FUNC16(path);
	}

	return err;
}