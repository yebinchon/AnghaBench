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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {unsigned int e_flags; int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
typedef  int /*<<< orphan*/  replace_rec ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 int EROFS ; 
 unsigned int OCFS2_EXT_REFCOUNTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_extent_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct ocfs2_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_path*) ; 
 struct super_block* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC13 (struct ocfs2_extent_tree*) ; 
 int FUNC14 (struct ocfs2_extent_list*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,int,struct ocfs2_extent_rec*,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 struct ocfs2_extent_list* FUNC16 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC17(handle_t *handle,
				    struct ocfs2_extent_tree *et,
				    u32 cpos, u32 p_cluster, u32 len,
				    unsigned int ext_flags,
				    struct ocfs2_alloc_context *meta_ac,
				    struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret, index;
	struct ocfs2_extent_rec replace_rec;
	struct ocfs2_path *path = NULL;
	struct ocfs2_extent_list *el;
	struct super_block *sb = FUNC11(et->et_ci);
	u64 ino = FUNC12(et->et_ci);

	FUNC5(0, "inode %llu cpos %u, len %u, p_cluster %u, ext_flags %u\n",
	     (unsigned long long)ino, cpos, len, p_cluster, ext_flags);

	FUNC4(&replace_rec, 0, sizeof(replace_rec));
	replace_rec.e_cpos = FUNC1(cpos);
	replace_rec.e_leaf_clusters = FUNC0(len);
	replace_rec.e_blkno = FUNC2(FUNC7(sb,
								   p_cluster));
	replace_rec.e_flags = ext_flags;
	replace_rec.e_flags &= ~OCFS2_EXT_REFCOUNTED;

	path = FUNC13(et);
	if (!path) {
		ret = -ENOMEM;
		FUNC6(ret);
		goto out;
	}

	ret = FUNC9(et->et_ci, path, cpos);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	el = FUNC16(path);

	index = FUNC14(el, cpos);
	if (index == -1 || index >= FUNC3(el->l_next_free_rec)) {
		FUNC8(sb,
			    "Inode %llu has an extent at cpos %u which can no "
			    "longer be found.\n",
			    (unsigned long long)ino, cpos);
		ret = -EROFS;
		goto out;
	}

	ret = FUNC15(handle, et, path, index,
				 &replace_rec, meta_ac, dealloc);
	if (ret)
		FUNC6(ret);

out:
	FUNC10(path);
	return ret;
}