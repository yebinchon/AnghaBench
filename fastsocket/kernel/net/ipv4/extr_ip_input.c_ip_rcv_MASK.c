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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct sk_buff {scalar_t__ pkt_type; int len; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct iphdr {int ihl; int version; int /*<<< orphan*/  tot_len; } ;
struct inet_skb_parm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSTATS_MIB_IN ; 
 int /*<<< orphan*/  IPSTATS_MIB_INDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INTRUNCATEDPKTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int NET_RX_DROP ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_PRE_ROUTING ; 
 scalar_t__ PACKET_OTHERHOST ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct iphdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  ip_rcv_finish ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(struct sk_buff *skb, struct net_device *dev, struct packet_type *pt, struct net_device *orig_dev)
{
	struct iphdr *iph;
	u32 len;

	/* When the interface is in promisc. mode, drop all the crap
	 * that it receives, do not try to analyse it.
	 */
	if (skb->pkt_type == PACKET_OTHERHOST)
		goto drop;


	FUNC2(FUNC4(dev), IPSTATS_MIB_IN, skb->len);

	if ((skb = FUNC13(skb, GFP_ATOMIC)) == NULL) {
		FUNC1(FUNC4(dev), IPSTATS_MIB_INDISCARDS);
		goto out;
	}

	if (!FUNC10(skb, sizeof(struct iphdr)))
		goto inhdr_error;

	iph = FUNC6(skb);

	/*
	 *	RFC1122: 3.2.1.2 MUST silently discard any IP frame that fails the checksum.
	 *
	 *	Is the datagram acceptable?
	 *
	 *	1.	Length at least the size of an ip header
	 *	2.	Version of 4
	 *	3.	Checksums correctly. [Speed optimisation for later, skip loopback checksums]
	 *	4.	Doesn't have a bogus length
	 */

	if (iph->ihl < 5 || iph->version != 4)
		goto inhdr_error;

	if (!FUNC10(skb, iph->ihl*4))
		goto inhdr_error;

	iph = FUNC6(skb);

	if (FUNC14(FUNC5((u8 *)iph, iph->ihl)))
		goto inhdr_error;

	len = FUNC9(iph->tot_len);
	if (skb->len < len) {
		FUNC1(FUNC4(dev), IPSTATS_MIB_INTRUNCATEDPKTS);
		goto drop;
	} else if (len < (iph->ihl*4))
		goto inhdr_error;

	/* Our transport medium may have padded the buffer out. Now we know it
	 * is IP we can trim to the true length of the frame.
	 * Note this now means skb->len holds ntohs(iph->tot_len).
	 */
	if (FUNC11(skb, len)) {
		FUNC1(FUNC4(dev), IPSTATS_MIB_INDISCARDS);
		goto drop;
	}

	/* Remove any debris in the socket control block */
	FUNC8(FUNC0(skb), 0, sizeof(struct inet_skb_parm));

	/* Must drop socket now because of tproxy. */
	FUNC12(skb);

	return FUNC3(PF_INET, NF_INET_PRE_ROUTING, skb, dev, NULL,
		       ip_rcv_finish);

inhdr_error:
	FUNC1(FUNC4(dev), IPSTATS_MIB_INHDRERRORS);
drop:
	FUNC7(skb);
out:
	return NET_RX_DROP;
}