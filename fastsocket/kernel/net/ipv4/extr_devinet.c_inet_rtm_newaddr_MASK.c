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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct in_ifaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct in_ifaddr*) ; 
 TYPE_1__ FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct in_ifaddr*) ; 
 int FUNC4 (struct in_ifaddr*,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 struct in_ifaddr* FUNC5 (struct net*,struct nlmsghdr*) ; 
 struct net* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC6(skb->sk);
	struct in_ifaddr *ifa;

	FUNC0();

	ifa = FUNC5(net, nlh);
	if (FUNC1(ifa))
		return FUNC3(ifa);

	return FUNC4(ifa, nlh, FUNC2(skb).pid);
}