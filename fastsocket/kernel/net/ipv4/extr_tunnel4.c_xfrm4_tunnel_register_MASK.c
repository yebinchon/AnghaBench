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
struct xfrm_tunnel {int priority; struct xfrm_tunnel* next; } ;

/* Variables and functions */
 int EEXIST ; 
 struct xfrm_tunnel** FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tunnel4_mutex ; 

int FUNC3(struct xfrm_tunnel *handler, unsigned short family)
{
	struct xfrm_tunnel **pprev;
	int ret = -EEXIST;
	int priority = handler->priority;

	FUNC1(&tunnel4_mutex);

	for (pprev = FUNC0(family); *pprev; pprev = &(*pprev)->next) {
		if ((*pprev)->priority > priority)
			break;
		if ((*pprev)->priority == priority)
			goto err;
	}

	handler->next = *pprev;
	*pprev = handler;

	ret = 0;

err:
	FUNC2(&tunnel4_mutex);

	return ret;
}