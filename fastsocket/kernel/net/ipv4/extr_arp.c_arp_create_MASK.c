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
struct sk_buff {int /*<<< orphan*/  len; void* protocol; struct net_device* dev; } ;
struct net_device {unsigned char* dev_addr; unsigned char* broadcast; int type; int addr_len; } ;
struct arphdr {int ar_hln; int ar_pln; void* ar_op; void* ar_pro; void* ar_hrd; } ;
typedef  unsigned char const __be32 ;

/* Variables and functions */
#define  ARPHRD_AX25 131 
 int ARPHRD_ETHER ; 
#define  ARPHRD_FDDI 130 
 int ARPHRD_IEEE802 ; 
#define  ARPHRD_IEEE802_TR 129 
#define  ARPHRD_NETROM 128 
 int AX25_P_IP ; 
 int ETH_P_ARP ; 
 int ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct sk_buff* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct net_device*,int,unsigned char const*,unsigned char const*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int const) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

struct sk_buff *FUNC12(int type, int ptype, __be32 dest_ip,
			   struct net_device *dev, __be32 src_ip,
			   const unsigned char *dest_hw,
			   const unsigned char *src_hw,
			   const unsigned char *target_hw)
{
	struct sk_buff *skb;
	struct arphdr *arp;
	unsigned char *arp_ptr;

	/*
	 *	Allocate a buffer
	 */

	skb = FUNC2(FUNC3(dev) + FUNC0(dev), GFP_ATOMIC);
	if (skb == NULL)
		return NULL;

	FUNC10(skb, FUNC1(dev));
	FUNC11(skb);
	arp = (struct arphdr *) FUNC9(skb, FUNC3(dev));
	skb->dev = dev;
	skb->protocol = FUNC5(ETH_P_ARP);
	if (src_hw == NULL)
		src_hw = dev->dev_addr;
	if (dest_hw == NULL)
		dest_hw = dev->broadcast;

	/*
	 *	Fill the device header for the ARP frame
	 */
	if (FUNC4(skb, dev, ptype, dest_hw, src_hw, skb->len) < 0)
		goto out;

	/*
	 * Fill out the arp protocol part.
	 *
	 * The arp hardware type should match the device type, except for FDDI,
	 * which (according to RFC 1390) should always equal 1 (Ethernet).
	 */
	/*
	 *	Exceptions everywhere. AX.25 uses the AX.25 PID value not the
	 *	DIX code for the protocol. Make these device structure fields.
	 */
	switch (dev->type) {
	default:
		arp->ar_hrd = FUNC5(dev->type);
		arp->ar_pro = FUNC5(ETH_P_IP);
		break;

#if defined(CONFIG_AX25) || defined(CONFIG_AX25_MODULE)
	case ARPHRD_AX25:
		arp->ar_hrd = htons(ARPHRD_AX25);
		arp->ar_pro = htons(AX25_P_IP);
		break;

#if defined(CONFIG_NETROM) || defined(CONFIG_NETROM_MODULE)
	case ARPHRD_NETROM:
		arp->ar_hrd = htons(ARPHRD_NETROM);
		arp->ar_pro = htons(AX25_P_IP);
		break;
#endif
#endif

#ifdef CONFIG_FDDI
	case ARPHRD_FDDI:
		arp->ar_hrd = htons(ARPHRD_ETHER);
		arp->ar_pro = htons(ETH_P_IP);
		break;
#endif
#ifdef CONFIG_TR
	case ARPHRD_IEEE802_TR:
		arp->ar_hrd = htons(ARPHRD_IEEE802);
		arp->ar_pro = htons(ETH_P_IP);
		break;
#endif
	}

	arp->ar_hln = dev->addr_len;
	arp->ar_pln = 4;
	arp->ar_op = FUNC5(type);

	arp_ptr=(unsigned char *)(arp+1);

	FUNC7(arp_ptr, src_hw, dev->addr_len);
	arp_ptr += dev->addr_len;
	FUNC7(arp_ptr, &src_ip, 4);
	arp_ptr += 4;
	if (target_hw != NULL)
		FUNC7(arp_ptr, target_hw, dev->addr_len);
	else
		FUNC8(arp_ptr, 0, dev->addr_len);
	arp_ptr += dev->addr_len;
	FUNC7(arp_ptr, &dest_ip, 4);

	return skb;

out:
	FUNC6(skb);
	return NULL;
}