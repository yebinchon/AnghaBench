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
struct stp_proto {int /*<<< orphan*/  (* rcv ) (struct stp_proto const*,struct sk_buff*,struct net_device*) ;int /*<<< orphan*/  group_address; } ;
struct sk_buff {int dummy; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct llc_pdu_un {scalar_t__ ssap; scalar_t__ dsap; scalar_t__ ctrl_1; } ;
struct ethhdr {scalar_t__* h_dest; } ;

/* Variables and functions */
 scalar_t__ GARP_ADDR_MAX ; 
 scalar_t__ GARP_ADDR_MIN ; 
 scalar_t__ LLC_PDU_TYPE_U ; 
 scalar_t__ LLC_SAP_BSPAN ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 struct ethhdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/ * garp_protos ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct llc_pdu_un* FUNC3 (struct sk_buff*) ; 
 struct stp_proto* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stp_proto ; 
 int /*<<< orphan*/  FUNC5 (struct stp_proto const*,struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct net_device *dev,
		       struct packet_type *pt, struct net_device *orig_dev)
{
	const struct ethhdr *eh = FUNC1(skb);
	const struct llc_pdu_un *pdu = FUNC3(skb);
	const struct stp_proto *proto;

	if (pdu->ssap != LLC_SAP_BSPAN ||
	    pdu->dsap != LLC_SAP_BSPAN ||
	    pdu->ctrl_1 != LLC_PDU_TYPE_U)
		goto err;

	if (eh->h_dest[5] >= GARP_ADDR_MIN && eh->h_dest[5] <= GARP_ADDR_MAX) {
		proto = FUNC4(garp_protos[eh->h_dest[5] -
						    GARP_ADDR_MIN]);
		if (proto &&
		    FUNC0(eh->h_dest, proto->group_address))
			goto err;
	} else
		proto = FUNC4(stp_proto);

	if (!proto)
		goto err;

	proto->rcv(proto, skb, dev);
	return 0;

err:
	FUNC2(skb);
	return 0;
}