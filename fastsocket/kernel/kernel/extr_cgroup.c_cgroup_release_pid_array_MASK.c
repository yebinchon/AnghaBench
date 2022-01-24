#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ns; } ;
struct cgroup_pidlist {int /*<<< orphan*/  mutex; TYPE_2__* owner; TYPE_1__ key; int /*<<< orphan*/  list; int /*<<< orphan*/  links; int /*<<< orphan*/  use_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  pidlist_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup_pidlist*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct cgroup_pidlist *l)
{
	/*
	 * the case where we're the last user of this particular pidlist will
	 * have us remove it from the cgroup's list, which entails taking the
	 * mutex. since in pidlist_find the pidlist->lock depends on cgroup->
	 * pidlist_mutex, we have to take pidlist_mutex first.
	 */
	FUNC4(&l->owner->pidlist_mutex);
	FUNC1(&l->mutex);
	FUNC0(!l->use_count);
	if (!--l->use_count) {
		/* we're the last user if refcount is 0; remove and free */
		FUNC3(&l->links);
		FUNC5(&l->owner->pidlist_mutex);
		FUNC6(l->list);
		FUNC7(l->key.ns);
		FUNC8(&l->mutex);
		FUNC2(l);
		return;
	}
	FUNC5(&l->owner->pidlist_mutex);
	FUNC8(&l->mutex);
}