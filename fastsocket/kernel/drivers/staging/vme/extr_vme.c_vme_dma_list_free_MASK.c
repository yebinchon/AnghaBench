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
struct vme_dma_list {int /*<<< orphan*/  mtx; TYPE_1__* parent; } ;
struct vme_bridge {int (* dma_list_empty ) (struct vme_dma_list*) ;} ;
struct TYPE_2__ {struct vme_bridge* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct vme_dma_list*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct vme_dma_list*) ; 

int FUNC5(struct vme_dma_list *list)
{
	struct vme_bridge *bridge = list->parent->parent;
	int retval;

	if (bridge->dma_list_empty == NULL) {
		FUNC3("Emptying of Link Lists not supported\n");
		return -EINVAL;
	}

	if (FUNC1(&(list->mtx))) {
		FUNC3("Link List in use\n");
		return -EINVAL;
	}

	/*
	 * Empty out all of the entries from the dma list. We need to go to the
	 * low level driver as dma entries are driver specific.
	 */
	retval = bridge->dma_list_empty(list);
	if (retval) {
		FUNC3("Unable to empty link-list entries\n");
		FUNC2(&(list->mtx));
		return retval;
	}
	FUNC2(&(list->mtx));
	FUNC0(list);

	return retval;
}