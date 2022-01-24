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
struct ocfs2_meta_cache_item {int dummy; } ;
struct ocfs2_caching_info {int ci_flags; int /*<<< orphan*/  ci_num_cached; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int OCFS2_CACHE_FL_INLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ocfs2_meta_cache_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_caching_info*) ; 
 scalar_t__ FUNC3 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_caching_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_caching_info*,struct ocfs2_meta_cache_item*) ; 
 int FUNC7 (struct ocfs2_caching_info*,scalar_t__) ; 
 struct ocfs2_meta_cache_item* FUNC8 (struct ocfs2_caching_info*,scalar_t__) ; 
 int /*<<< orphan*/  ocfs2_uptodate_cachep ; 

__attribute__((used)) static void FUNC9(struct ocfs2_caching_info *ci,
					  sector_t block)
{
	int index;
	struct ocfs2_meta_cache_item *item = NULL;

	FUNC2(ci);
	FUNC1(0, "Owner %llu, remove %llu, items = %u, array = %u\n",
	     (unsigned long long)FUNC3(ci),
	     (unsigned long long) block, ci->ci_num_cached,
	     ci->ci_flags & OCFS2_CACHE_FL_INLINE);

	if (ci->ci_flags & OCFS2_CACHE_FL_INLINE) {
		index = FUNC7(ci, block);
		if (index != -1)
			FUNC5(ci, index);
	} else {
		item = FUNC8(ci, block);
		if (item)
			FUNC6(ci, item);
	}
	FUNC4(ci);

	if (item)
		FUNC0(ocfs2_uptodate_cachep, item);
}