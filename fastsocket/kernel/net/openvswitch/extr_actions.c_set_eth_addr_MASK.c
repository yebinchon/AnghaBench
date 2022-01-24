#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ovs_key_ethernet {int /*<<< orphan*/  eth_dst; int /*<<< orphan*/  eth_src; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
			const struct ovs_key_ethernet *eth_key)
{
	int err;
	err = FUNC1(skb, ETH_HLEN);
	if (FUNC5(err))
		return err;

	FUNC4(skb, FUNC0(skb), ETH_ALEN * 2);

	FUNC2(FUNC0(skb)->h_source, eth_key->eth_src, ETH_ALEN);
	FUNC2(FUNC0(skb)->h_dest, eth_key->eth_dst, ETH_ALEN);

	FUNC3(skb, FUNC0(skb), ETH_ALEN * 2);

	return 0;
}