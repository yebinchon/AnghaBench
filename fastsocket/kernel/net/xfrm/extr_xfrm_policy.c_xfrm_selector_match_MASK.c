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
struct xfrm_selector {int dummy; } ;
struct flowi {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (struct xfrm_selector*,struct flowi*) ; 
 int FUNC1 (struct xfrm_selector*,struct flowi*) ; 

int FUNC2(struct xfrm_selector *sel, struct flowi *fl,
		    unsigned short family)
{
	switch (family) {
	case AF_INET:
		return FUNC0(sel, fl);
	case AF_INET6:
		return FUNC1(sel, fl);
	}
	return 0;
}