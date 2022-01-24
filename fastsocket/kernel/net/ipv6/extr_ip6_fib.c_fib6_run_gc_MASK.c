#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ip6_rt_gc_interval; } ;
struct TYPE_5__ {int /*<<< orphan*/  ip6_fib_timer; TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;
struct TYPE_6__ {int timeout; scalar_t__ more; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fib6_age ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fib6_gc_lock ; 
 TYPE_3__ gc_args ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(unsigned long expires, struct net *net, bool force)
{
	if (force) {
		FUNC5(&fib6_gc_lock);
	} else if (!FUNC6(&fib6_gc_lock)) {
		FUNC3(&net->ipv6.ip6_fib_timer, jiffies + HZ);
		return;
	}
	gc_args.timeout = expires ? (int)expires :
			  net->ipv6.sysctl.ip6_rt_gc_interval;

	gc_args.more = FUNC2();

	FUNC1(net, fib6_age, 0, NULL);

	if (gc_args.more)
		FUNC3(&net->ipv6.ip6_fib_timer,
			  FUNC4(jiffies
					+ net->ipv6.sysctl.ip6_rt_gc_interval));
	else
		FUNC0(&net->ipv6.ip6_fib_timer);
	FUNC7(&fib6_gc_lock);
}