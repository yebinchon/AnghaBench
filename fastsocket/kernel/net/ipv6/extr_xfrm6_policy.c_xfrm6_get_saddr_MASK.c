#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  a6; } ;
typedef  TYPE_1__ xfrm_address_t ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_7__ {struct net_device* dev; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 TYPE_5__* FUNC3 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*,struct in6_addr*,int /*<<< orphan*/ ,struct in6_addr*) ; 
 struct dst_entry* FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct net *net,
			   xfrm_address_t *saddr, xfrm_address_t *daddr)
{
	struct dst_entry *dst;
	struct net_device *dev;

	dst = FUNC5(net, 0, NULL, daddr);
	if (FUNC0(dst))
		return -EHOSTUNREACH;

	dev = FUNC3(dst)->dev;
	FUNC4(FUNC1(dev), dev,
			   (struct in6_addr *)&daddr->a6, 0,
			   (struct in6_addr *)&saddr->a6);
	FUNC2(dst);
	return 0;
}