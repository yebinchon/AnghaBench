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
struct debug_obj {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ ODEBUG_POOL_SIZE ; 
 int /*<<< orphan*/  debug_obj_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ obj_cache ; 
 int /*<<< orphan*/  obj_pool ; 
 scalar_t__ obj_pool_free ; 
 int /*<<< orphan*/  obj_pool_used ; 
 int /*<<< orphan*/  pool_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct debug_obj *obj)
{
	unsigned long flags;
	int sched = 0;

	FUNC2(&pool_lock, flags);
	/*
	 * schedule work when the pool is filled and the cache is
	 * initialized:
	 */
	if (obj_pool_free > ODEBUG_POOL_SIZE && obj_cache)
		sched = !FUNC4(&debug_obj_work);
	FUNC0(&obj->node, &obj_pool);
	obj_pool_free++;
	obj_pool_used--;
	FUNC3(&pool_lock, flags);
	if (sched)
		FUNC1(&debug_obj_work);
}