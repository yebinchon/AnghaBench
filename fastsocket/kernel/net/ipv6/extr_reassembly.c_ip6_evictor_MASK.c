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
struct TYPE_2__ {int /*<<< orphan*/  frags; } ;
struct net {TYPE_1__ ipv6; } ;
struct inet6_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMFAILS ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip6_frags ; 

__attribute__((used)) static void FUNC2(struct net *net, struct inet6_dev *idev)
{
	int evicted;

	evicted = FUNC1(&net->ipv6.frags, &ip6_frags);
	if (evicted)
		FUNC0(net, idev, IPSTATS_MIB_REASMFAILS, evicted);
}