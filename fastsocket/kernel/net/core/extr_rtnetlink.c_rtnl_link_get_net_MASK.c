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
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 size_t IFLA_NET_NS_FD ; 
 size_t IFLA_NET_NS_PID ; 
 struct net* FUNC0 (struct net*) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 

struct net *FUNC4(struct net *src_net, struct nlattr *tb[])
{
	struct net *net;
	/* Examine the link attributes and figure out which
	 * network namespace we are talking about.
	 */
	if (tb[IFLA_NET_NS_PID])
		net = FUNC2(FUNC3(tb[IFLA_NET_NS_PID]));
	else if (tb[IFLA_NET_NS_FD])
		net = FUNC1(FUNC3(tb[IFLA_NET_NS_FD]));
	else
		net = FUNC0(src_net);
	return net;
}