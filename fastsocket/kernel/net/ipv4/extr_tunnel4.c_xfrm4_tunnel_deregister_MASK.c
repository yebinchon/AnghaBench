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
struct xfrm_tunnel {struct xfrm_tunnel* next; } ;

/* Variables and functions */
 int ENOENT ; 
 struct xfrm_tunnel** FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  tunnel4_mutex ; 

int FUNC4(struct xfrm_tunnel *handler, unsigned short family)
{
	struct xfrm_tunnel **pprev;
	int ret = -ENOENT;

	FUNC1(&tunnel4_mutex);

	for (pprev = FUNC0(family); *pprev; pprev = &(*pprev)->next) {
		if (*pprev == handler) {
			*pprev = handler->next;
			ret = 0;
			break;
		}
	}

	FUNC2(&tunnel4_mutex);

	FUNC3();

	return ret;
}