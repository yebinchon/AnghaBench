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
typedef  int u32 ;
struct ocfs2_refcount_rec {void* r_refcount; int /*<<< orphan*/  r_cpos; void* r_clusters; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void**,int) ; 
 int FUNC4 (void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int,int,int) ; 
 int FUNC10 (struct ocfs2_caching_info*,struct buffer_head*,scalar_t__,int,struct ocfs2_refcount_rec*,int*,struct buffer_head**) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_refcount_rec*,int,int,struct ocfs2_alloc_context*) ; 
 scalar_t__ FUNC12 (struct ocfs2_caching_info*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_refcount_rec*,int,int,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 

__attribute__((used)) static int FUNC14(handle_t *handle,
				     struct ocfs2_caching_info *ci,
				     struct buffer_head *ref_root_bh,
				     u64 cpos, u32 len, int merge,
				     struct ocfs2_alloc_context *meta_ac,
				     struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret = 0, index;
	struct buffer_head *ref_leaf_bh = NULL;
	struct ocfs2_refcount_rec rec;
	unsigned int set_len = 0;

	FUNC7(0, "Tree owner %llu, add refcount start %llu, len %u\n",
	     (unsigned long long)FUNC12(ci),
	     (unsigned long long)cpos, len);

	while (len) {
		ret = FUNC10(ci, ref_root_bh,
					     cpos, len, &rec, &index,
					     &ref_leaf_bh);
		if (ret) {
			FUNC8(ret);
			goto out;
		}

		set_len = FUNC4(rec.r_clusters);

		/*
		 * Here we may meet with 3 situations:
		 *
		 * 1. If we find an already existing record, and the length
		 *    is the same, cool, we just need to increase the r_refcount
		 *    and it is OK.
		 * 2. If we find a hole, just insert it with r_refcount = 1.
		 * 3. If we are in the middle of one extent record, split
		 *    it.
		 */
		if (rec.r_refcount && FUNC5(rec.r_cpos) == cpos &&
		    set_len <= len) {
			FUNC7(0, "increase refcount rec, start %llu, len %u, "
			     "count %u\n", (unsigned long long)cpos, set_len,
			     FUNC4(rec.r_refcount));
			ret = FUNC9(handle, ci,
							ref_leaf_bh, index,
							merge, 1);
			if (ret) {
				FUNC8(ret);
				goto out;
			}
		} else if (!rec.r_refcount) {
			rec.r_refcount = FUNC1(1);

			FUNC7(0, "insert refcount rec, start %llu, len %u\n",
			     (unsigned long long)FUNC5(rec.r_cpos),
			     set_len);
			ret = FUNC11(handle, ci, ref_root_bh,
							ref_leaf_bh,
							&rec, index,
							merge, meta_ac);
			if (ret) {
				FUNC8(ret);
				goto out;
			}
		} else  {
			set_len = FUNC6((u64)(cpos + len),
				      FUNC5(rec.r_cpos) + set_len) - cpos;
			rec.r_cpos = FUNC2(cpos);
			rec.r_clusters = FUNC1(set_len);
			FUNC3(&rec.r_refcount, 1);

			FUNC7(0, "split refcount rec, start %llu, "
			     "len %u, count %u\n",
			     (unsigned long long)FUNC5(rec.r_cpos),
			     set_len, FUNC4(rec.r_refcount));
			ret = FUNC13(handle, ci,
						       ref_root_bh, ref_leaf_bh,
						       &rec, index, merge,
						       meta_ac, dealloc);
			if (ret) {
				FUNC8(ret);
				goto out;
			}
		}

		cpos += set_len;
		len -= set_len;
		FUNC0(ref_leaf_bh);
		ref_leaf_bh = NULL;
	}

out:
	FUNC0(ref_leaf_bh);
	return ret;
}