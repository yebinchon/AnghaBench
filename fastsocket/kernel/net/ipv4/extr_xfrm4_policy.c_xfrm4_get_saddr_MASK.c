#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  a4; } ;
typedef  TYPE_1__ xfrm_address_t ;
struct rtable {int /*<<< orphan*/  rt_src; } ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct dst_entry* FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct net *net,
			   xfrm_address_t *saddr, xfrm_address_t *daddr)
{
	struct dst_entry *dst;
	struct rtable *rt;

	dst = FUNC2(net, 0, NULL, daddr);
	if (FUNC0(dst))
		return -EHOSTUNREACH;

	rt = (struct rtable *)dst;
	saddr->a4 = rt->rt_src;
	FUNC1(dst);
	return 0;
}