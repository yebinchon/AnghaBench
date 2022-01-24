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
struct ocfs2_meta_cache_item {int /*<<< orphan*/  c_block; } ;
struct TYPE_2__ {int /*<<< orphan*/  ci_tree; int /*<<< orphan*/ * ci_array; } ;
struct ocfs2_caching_info {int ci_num_cached; int ci_flags; TYPE_1__ ci_cache; } ;

/* Variables and functions */
 int OCFS2_CACHE_FL_INLINE ; 
 int OCFS2_CACHE_INFO_MAX_ARRAY ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_caching_info*,struct ocfs2_meta_cache_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long long,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned long long,...) ; 
 scalar_t__ FUNC3 (struct ocfs2_caching_info*) ; 

__attribute__((used)) static void FUNC4(struct ocfs2_caching_info *ci,
			       struct ocfs2_meta_cache_item **tree)
{
	int i;

	FUNC2(ci->ci_num_cached != OCFS2_CACHE_INFO_MAX_ARRAY,
			"Owner %llu, num cached = %u, should be %u\n",
			(unsigned long long)FUNC3(ci),
			ci->ci_num_cached, OCFS2_CACHE_INFO_MAX_ARRAY);
	FUNC2(!(ci->ci_flags & OCFS2_CACHE_FL_INLINE),
			"Owner %llu not marked as inline anymore!\n",
			(unsigned long long)FUNC3(ci));

	/* Be careful to initialize the tree members *first* because
	 * once the ci_tree is used, the array is junk... */
	for (i = 0; i < OCFS2_CACHE_INFO_MAX_ARRAY; i++)
		tree[i]->c_block = ci->ci_cache.ci_array[i];

	ci->ci_flags &= ~OCFS2_CACHE_FL_INLINE;
	ci->ci_cache.ci_tree = RB_ROOT;
	/* this will be set again by __ocfs2_insert_cache_tree */
	ci->ci_num_cached = 0;

	for (i = 0; i < OCFS2_CACHE_INFO_MAX_ARRAY; i++) {
		FUNC0(ci, tree[i]);
		tree[i] = NULL;
	}

	FUNC1(0, "Expanded %llu to a tree cache: flags 0x%x, num = %u\n",
	     (unsigned long long)FUNC3(ci),
	     ci->ci_flags, ci->ci_num_cached);
}