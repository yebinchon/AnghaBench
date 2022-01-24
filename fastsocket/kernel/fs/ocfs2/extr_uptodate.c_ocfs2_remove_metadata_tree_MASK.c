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
struct ocfs2_meta_cache_item {int /*<<< orphan*/  c_node; scalar_t__ c_block; } ;
struct TYPE_2__ {int /*<<< orphan*/  ci_tree; } ;
struct ocfs2_caching_info {int /*<<< orphan*/  ci_num_cached; TYPE_1__ ci_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ocfs2_caching_info *ci,
				       struct ocfs2_meta_cache_item *item)
{
	FUNC0(0, "remove block %llu from tree\n",
	     (unsigned long long) item->c_block);

	FUNC1(&item->c_node, &ci->ci_cache.ci_tree);
	ci->ci_num_cached--;
}