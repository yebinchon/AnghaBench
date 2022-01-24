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
struct list_head {int dummy; } ;
struct flow_cache_percpu {int hash_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  flow_cache_gc_list ; 
 int /*<<< orphan*/  flow_cache_gc_lock ; 
 int /*<<< orphan*/  flow_cache_gc_work ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct flow_cache_percpu *fcp,
				     int deleted, struct list_head *gc_list)
{
	if (deleted) {
		fcp->hash_count -= deleted;
		FUNC2(&flow_cache_gc_lock);
		FUNC0(gc_list, &flow_cache_gc_list);
		FUNC3(&flow_cache_gc_lock);
		FUNC1(&flow_cache_gc_work);
	}
}