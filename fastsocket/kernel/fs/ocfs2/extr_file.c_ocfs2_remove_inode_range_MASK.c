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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct ocfs2_super {int s_clustersize_bits; int /*<<< orphan*/  sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {struct address_space* i_mapping; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long,unsigned long long,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (struct inode*,int,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC9 (struct inode*,struct ocfs2_extent_tree*,int,int,int,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_super*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC13 (struct inode*,struct buffer_head*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct inode *inode,
				    struct buffer_head *di_bh, u64 byte_start,
				    u64 byte_len)
{
	int ret = 0;
	u32 trunc_start, trunc_len, cpos, phys_cpos, alloc_size;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct ocfs2_cached_dealloc_ctxt dealloc;
	struct address_space *mapping = inode->i_mapping;
	struct ocfs2_extent_tree et;

	FUNC8(&et, FUNC0(inode), di_bh);
	FUNC7(&dealloc);

	if (byte_len == 0)
		return 0;

	if (FUNC1(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		ret = FUNC13(inode, di_bh, byte_start,
					    byte_start + byte_len, 0);
		if (ret) {
			FUNC4(ret);
			goto out;
		}
		/*
		 * There's no need to get fancy with the page cache
		 * truncate of an inline-data inode. We're talking
		 * about less than a page here, which will be cached
		 * in the dinode buffer anyway.
		 */
		FUNC16(mapping, 0, 0, 0);
		FUNC15(mapping, 0);
		goto out;
	}

	trunc_start = FUNC5(osb->sb, byte_start);
	trunc_len = (byte_start + byte_len) >> osb->s_clustersize_bits;
	if (trunc_len >= trunc_start)
		trunc_len -= trunc_start;
	else
		trunc_len = 0;

	FUNC3(0, "Inode: %llu, start: %llu, len: %llu, cstart: %u, clen: %u\n",
	     (unsigned long long)FUNC1(inode)->ip_blkno,
	     (unsigned long long)byte_start,
	     (unsigned long long)byte_len, trunc_start, trunc_len);

	ret = FUNC14(inode, byte_start, byte_len);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	cpos = trunc_start;
	while (trunc_len) {
		ret = FUNC6(inode, cpos, &phys_cpos,
					 &alloc_size, NULL);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		if (alloc_size > trunc_len)
			alloc_size = trunc_len;

		/* Only do work for non-holes */
		if (phys_cpos != 0) {
			ret = FUNC9(inode, &et, cpos,
						       phys_cpos, alloc_size,
						       &dealloc);
			if (ret) {
				FUNC4(ret);
				goto out;
			}
		}

		cpos += alloc_size;
		trunc_len -= alloc_size;
	}

	FUNC12(inode, byte_start, byte_len);

out:
	FUNC11(osb, 1);
	FUNC10(osb, &dealloc);

	return ret;
}