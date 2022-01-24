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
struct inet6_ifaddr {TYPE_1__* idev; int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct in6_addr*) ; 

__attribute__((used)) static void FUNC3(struct inet6_ifaddr *ifp)
{
	struct in6_addr addr;
	FUNC1(&addr, &ifp->addr, ifp->prefix_len);
	if (FUNC0(&addr))
		return;
	FUNC2(ifp->idev->dev, &addr);
}