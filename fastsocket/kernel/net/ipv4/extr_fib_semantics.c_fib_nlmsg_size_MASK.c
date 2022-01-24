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
struct rtnexthop {int dummy; } ;
struct rtmsg {int dummy; } ;
struct fib_info {int fib_nhs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t RTAX_MAX ; 
 int FUNC1 (size_t) ; 

__attribute__((used)) static inline size_t FUNC2(struct fib_info *fi)
{
	size_t payload = FUNC0(sizeof(struct rtmsg))
			 + FUNC1(4) /* RTA_TABLE */
			 + FUNC1(4) /* RTA_DST */
			 + FUNC1(4) /* RTA_PRIORITY */
			 + FUNC1(4); /* RTA_PREFSRC */

	/* space for nested metrics */
	payload += FUNC1((RTAX_MAX * FUNC1(4)));

	if (fi->fib_nhs) {
		/* Also handles the special case fib_nhs == 1 */

		/* each nexthop is packed in an attribute */
		size_t nhsize = FUNC1(sizeof(struct rtnexthop));

		/* may contain flow and gateway attribute */
		nhsize += 2 * FUNC1(4);

		/* all nexthops are packed in a nested attribute */
		payload += FUNC1(fi->fib_nhs * nhsize);
	}

	return payload;
}