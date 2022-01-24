#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct inet6_ifaddr {TYPE_1__ timer; } ;
typedef  enum addrconf_timer_t { ____Placeholder_addrconf_timer_t } addrconf_timer_t ;

/* Variables and functions */
#define  AC_DAD 129 
#define  AC_RS 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  addrconf_dad_timer ; 
 int /*<<< orphan*/  addrconf_rs_timer ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_ifaddr*) ; 
 scalar_t__ jiffies ; 

__attribute__((used)) static void FUNC3(struct inet6_ifaddr *ifp,
			       enum addrconf_timer_t what,
			       unsigned long when)
{
	if (!FUNC1(&ifp->timer))
		FUNC2(ifp);

	switch (what) {
	case AC_DAD:
		ifp->timer.function = addrconf_dad_timer;
		break;
	case AC_RS:
		ifp->timer.function = addrconf_rs_timer;
		break;
	default:;
	}
	ifp->timer.expires = jiffies + when;
	FUNC0(&ifp->timer);
}