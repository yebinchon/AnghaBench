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
struct TYPE_2__ {int /*<<< orphan*/  rt6_stats; int /*<<< orphan*/  fib_table_hash; int /*<<< orphan*/  fib6_main_tbl; int /*<<< orphan*/  fib6_local_tbl; int /*<<< orphan*/  ip6_fib_timer; } ;
struct net {TYPE_1__ ipv6; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net *net)
{
	FUNC2(net, NULL);
	FUNC0(&net->ipv6.ip6_fib_timer);

#ifdef CONFIG_IPV6_MULTIPLE_TABLES
	kfree(net->ipv6.fib6_local_tbl);
#endif
	FUNC1(net->ipv6.fib6_main_tbl);
	FUNC1(net->ipv6.fib_table_hash);
	FUNC1(net->ipv6.rt6_stats);
}