#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sk_buff {scalar_t__ pkt_type; } ;
struct packet_type {int /*<<< orphan*/  type; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  net; } ;
struct TYPE_4__ {scalar_t__ net; } ;
struct ipxhdr {scalar_t__ ipx_checksum; TYPE_2__ ipx_source; TYPE_1__ ipx_dest; int /*<<< orphan*/  ipx_tctrl; int /*<<< orphan*/  ipx_pktsize; } ;
struct ipx_interface {int dummy; } ;
struct TYPE_6__ {scalar_t__ ipx_dest_net; int /*<<< orphan*/  ipx_source_net; int /*<<< orphan*/  ipx_tctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPX_NO_CHECKSUM ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ PACKET_OTHERHOST ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 scalar_t__ FUNC2 (struct ipxhdr*,int) ; 
 struct ipxhdr* FUNC3 (struct sk_buff*) ; 
 scalar_t__ ipxcfg_auto_create_interfaces ; 
 struct ipx_interface* FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct ipx_interface* FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ipx_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipx_interface*) ; 
 int FUNC8 (struct ipx_interface*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct net_device *dev, struct packet_type *pt, struct net_device *orig_dev)
{
	/* NULL here for pt means the packet was looped back */
	struct ipx_interface *intrfc;
	struct ipxhdr *ipx;
	u16 ipx_pktsize;
	int rc = 0;

	if (!FUNC10(FUNC1(dev), &init_net))
		goto drop;

	/* Not ours */
	if (skb->pkt_type == PACKET_OTHERHOST)
		goto drop;

	if ((skb = FUNC13(skb, GFP_ATOMIC)) == NULL)
		goto out;

	if (!FUNC12(skb, sizeof(struct ipxhdr)))
		goto drop;

	ipx_pktsize = FUNC11(FUNC3(skb)->ipx_pktsize);

	/* Too small or invalid header? */
	if (ipx_pktsize < sizeof(struct ipxhdr) ||
	    !FUNC12(skb, ipx_pktsize))
		goto drop;

	ipx = FUNC3(skb);
	if (ipx->ipx_checksum != IPX_NO_CHECKSUM &&
	   ipx->ipx_checksum != FUNC2(ipx, ipx_pktsize))
		goto drop;

	FUNC0(skb)->ipx_tctrl	= ipx->ipx_tctrl;
	FUNC0(skb)->ipx_dest_net	= ipx->ipx_dest.net;
	FUNC0(skb)->ipx_source_net = ipx->ipx_source.net;

	/* Determine what local ipx endpoint this is */
	intrfc = FUNC5(dev, pt->type);
	if (!intrfc) {
		if (ipxcfg_auto_create_interfaces &&
		   FUNC0(skb)->ipx_dest_net) {
			intrfc = FUNC4(dev, pt->type);
			if (intrfc)
				FUNC6(intrfc);
		}

		if (!intrfc)	/* Not one of ours */
				/* or invalid packet for auto creation */
			goto drop;
	}

	rc = FUNC8(intrfc, skb);
	FUNC7(intrfc);
	goto out;
drop:
	FUNC9(skb);
out:
	return rc;
}