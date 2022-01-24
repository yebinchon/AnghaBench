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
struct sk_buff {scalar_t__ ip_summed; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTERROR ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 

int FUNC8(struct sk_buff *skb)
{
	struct net *net = FUNC1(FUNC4(skb)->dev);
	int err;

	if (FUNC5(skb))
		return FUNC7(skb);

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		err = FUNC3(skb);
		if (err) {
			FUNC0(net, LINUX_MIB_XFRMOUTERROR);
			FUNC2(skb);
			return err;
		}
	}

	return FUNC6(skb);
}