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
struct sk_buff {int dummy; } ;
struct net_device {void* dev_addr; int flags; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; void* h_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int ETH_HLEN ; 
 unsigned short ETH_P_802_3 ; 
 int IFF_LOOPBACK ; 
 int IFF_NOARP ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 

int FUNC4(struct sk_buff *skb, struct net_device *dev,
	       unsigned short type,
	       const void *daddr, const void *saddr, unsigned len)
{
	struct ethhdr *eth = (struct ethhdr *)FUNC3(skb, ETH_HLEN);

	if (type != ETH_P_802_3)
		eth->h_proto = FUNC0(type);
	else
		eth->h_proto = FUNC0(len);

	/*
	 *      Set the source hardware address.
	 */

	if (!saddr)
		saddr = dev->dev_addr;
	FUNC1(eth->h_source, saddr, ETH_ALEN);

	if (daddr) {
		FUNC1(eth->h_dest, daddr, ETH_ALEN);
		return ETH_HLEN;
	}

	/*
	 *      Anyway, the loopback-device should never use this function...
	 */

	if (dev->flags & (IFF_LOOPBACK | IFF_NOARP)) {
		FUNC2(eth->h_dest, 0, ETH_ALEN);
		return ETH_HLEN;
	}

	return -ETH_HLEN;
}