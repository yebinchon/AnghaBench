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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_XFRMINHDRERROR ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct flowi*,unsigned short) ; 
 scalar_t__ FUNC5 (struct net*,struct dst_entry**,struct flowi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct sk_buff *skb, unsigned short family)
{
	struct net *net = FUNC1(skb->dev);
	struct flowi fl;
	struct dst_entry *dst;
	int res;

	if (FUNC4(skb, &fl, family) < 0) {
		/* XXX: we should have something like FWDHDRERROR here. */
		FUNC0(net, LINUX_MIB_XFRMINHDRERROR);
		return 0;
	}

	dst = FUNC2(skb);

	res = FUNC5(net, &dst, &fl, NULL, 0) == 0;
	FUNC3(skb, dst);
	return res;
}