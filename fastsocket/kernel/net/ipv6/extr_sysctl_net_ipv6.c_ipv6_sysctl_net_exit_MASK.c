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
struct TYPE_4__ {TYPE_3__* table; } ;
struct TYPE_5__ {TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;
struct ctl_table {struct ctl_table* child; } ;
struct TYPE_6__ {struct ctl_table* ctl_table_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ctl_table*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC2(struct net *net)
{
	struct ctl_table *ipv6_table;
	struct ctl_table *ipv6_route_table;
	struct ctl_table *ipv6_icmp_table;

	ipv6_table = net->ipv6.sysctl.table->ctl_table_arg;
	ipv6_route_table = ipv6_table[0].child;
	ipv6_icmp_table = ipv6_table[1].child;

	FUNC1(net->ipv6.sysctl.table);

	FUNC0(ipv6_table);
	FUNC0(ipv6_route_table);
	FUNC0(ipv6_icmp_table);
}