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
struct mb_cache_entry {int /*<<< orphan*/  e_lru_list; scalar_t__ e_queued; scalar_t__ e_used; struct mb_cache* e_cache; } ;
struct TYPE_2__ {scalar_t__ (* free ) (struct mb_cache_entry*,int /*<<< orphan*/ ) ;} ;
struct mb_cache {int /*<<< orphan*/  c_entry_count; int /*<<< orphan*/  c_entry_cache; TYPE_1__ c_op; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  mb_cache_lru_list ; 
 int /*<<< orphan*/  mb_cache_spinlock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct mb_cache_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct mb_cache_entry *ce, gfp_t gfp_mask)
{
	struct mb_cache *cache = ce->e_cache;

	FUNC3(!(ce->e_used || ce->e_queued));
	if (cache->c_op.free && cache->c_op.free(ce, gfp_mask)) {
		/* free failed -- put back on the lru list
		   for freeing later. */
		FUNC4(&mb_cache_spinlock);
		FUNC2(&ce->e_lru_list, &mb_cache_lru_list);
		FUNC5(&mb_cache_spinlock);
	} else {
		FUNC1(cache->c_entry_cache, ce);
		FUNC0(&cache->c_entry_count);
	}
}