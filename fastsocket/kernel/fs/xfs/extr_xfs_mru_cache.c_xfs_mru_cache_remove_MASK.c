#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  store; scalar_t__ lists; } ;
typedef  TYPE_1__ xfs_mru_cache_t ;
struct TYPE_7__ {int /*<<< orphan*/  list_node; void* value; } ;
typedef  TYPE_2__ xfs_mru_cache_elem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_mru_elem_zone ; 

void *
FUNC6(
	xfs_mru_cache_t	*mru,
	unsigned long	key)
{
	xfs_mru_cache_elem_t *elem;
	void		*value = NULL;

	FUNC0(mru && mru->lists);
	if (!mru || !mru->lists)
		return NULL;

	FUNC4(&mru->lock);
	elem = FUNC3(&mru->store, key);
	if (elem) {
		value = elem->value;
		FUNC2(&elem->list_node);
	}

	FUNC5(&mru->lock);

	if (elem)
		FUNC1(xfs_mru_elem_zone, elem);

	return value;
}