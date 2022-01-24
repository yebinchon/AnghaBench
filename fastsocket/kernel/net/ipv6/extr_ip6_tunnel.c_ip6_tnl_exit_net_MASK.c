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
struct net {int dummy; } ;
struct ip6_tnl_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip6_tnl_net*) ; 
 int /*<<< orphan*/  ip6_tnl_net_id ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_tnl_net*) ; 
 struct ip6_tnl_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct net *net)
{
	struct ip6_tnl_net *ip6n;

	ip6n = FUNC2(net, ip6_tnl_net_id);
	FUNC3();
	FUNC0(ip6n);
	FUNC4();
	FUNC1(ip6n);
}