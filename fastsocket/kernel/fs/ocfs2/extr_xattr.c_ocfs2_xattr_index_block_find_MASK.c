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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_xattr_tree_root {struct ocfs2_extent_list xt_list; } ;
struct ocfs2_xattr_search {int dummy; } ;
struct TYPE_2__ {struct ocfs2_xattr_tree_root xb_root; } ;
struct ocfs2_xattr_block {TYPE_1__ xb_attrs; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,int,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_xattr_search*) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ocfs2_extent_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
					struct buffer_head *root_bh,
					int name_index,
					const char *name,
					struct ocfs2_xattr_search *xs)
{
	int ret;
	struct ocfs2_xattr_block *xb =
			(struct ocfs2_xattr_block *)root_bh->b_data;
	struct ocfs2_xattr_tree_root *xb_root = &xb->xb_attrs.xb_root;
	struct ocfs2_extent_list *el = &xb_root->xt_list;
	u64 p_blkno = 0;
	u32 first_hash, num_clusters = 0;
	u32 name_hash = FUNC6(inode, name, FUNC7(name));

	if (FUNC1(el->l_next_free_rec) == 0)
		return -ENODATA;

	FUNC2(0, "find xattr %s, hash = %u, index = %d in xattr tree\n",
	     name, name_hash, name_index);

	ret = FUNC5(inode, name_hash, &p_blkno, &first_hash,
				  &num_clusters, el);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	FUNC0(p_blkno == 0 || num_clusters == 0 || first_hash > name_hash);

	FUNC2(0, "find xattr extent rec %u clusters from %llu, the first hash "
	     "in the rec is %u\n", num_clusters, (unsigned long long)p_blkno,
	     first_hash);

	ret = FUNC4(inode, name_index, name, name_hash,
				      p_blkno, first_hash, num_clusters, xs);

out:
	return ret;
}