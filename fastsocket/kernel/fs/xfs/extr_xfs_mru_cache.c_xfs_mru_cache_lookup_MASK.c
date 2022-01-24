#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  store; scalar_t__ lists; } ;
typedef  TYPE_1__ xfs_mru_cache_t ;
struct TYPE_8__ {void* value; int /*<<< orphan*/  list_node; } ;
typedef  TYPE_2__ xfs_mru_cache_elem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mru_lock ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void *
FUNC7(
	xfs_mru_cache_t	*mru,
	unsigned long	key)
{
	xfs_mru_cache_elem_t *elem;

	FUNC0(mru && mru->lists);
	if (!mru || !mru->lists)
		return NULL;

	FUNC5(&mru->lock);
	elem = FUNC4(&mru->store, key);
	if (elem) {
		FUNC3(&elem->list_node);
		FUNC2(mru, elem);
		FUNC1(mru_lock); /* help sparse not be stupid */
	} else
		FUNC6(&mru->lock);

	return elem ? elem->value : NULL;
}