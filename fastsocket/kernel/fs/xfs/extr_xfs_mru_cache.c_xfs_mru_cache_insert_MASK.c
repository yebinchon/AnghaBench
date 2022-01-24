#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  store; scalar_t__ lists; } ;
typedef  TYPE_1__ xfs_mru_cache_t ;
struct TYPE_10__ {unsigned long key; void* value; int /*<<< orphan*/  list_node; } ;
typedef  TYPE_2__ xfs_mru_cache_elem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_mru_elem_zone ; 

int
FUNC10(
	xfs_mru_cache_t	*mru,
	unsigned long	key,
	void		*value)
{
	xfs_mru_cache_elem_t *elem;

	FUNC0(mru && mru->lists);
	if (!mru || !mru->lists)
		return EINVAL;

	elem = FUNC4(xfs_mru_elem_zone, KM_SLEEP);
	if (!elem)
		return ENOMEM;

	if (FUNC6(GFP_KERNEL)) {
		FUNC3(xfs_mru_elem_zone, elem);
		return ENOMEM;
	}

	FUNC1(&elem->list_node);
	elem->key = key;
	elem->value = value;

	FUNC8(&mru->lock);

	FUNC5(&mru->store, key, elem);
	FUNC7();
	FUNC2(mru, elem);

	FUNC9(&mru->lock);

	return 0;
}