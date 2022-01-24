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
struct sk_buff {scalar_t__ pkt_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  node; } ;
struct ipxhdr {scalar_t__ ipx_type; TYPE_2__ ipx_dest; } ;
struct ipx_interface {scalar_t__ if_netnum; int /*<<< orphan*/  if_node; } ;
struct TYPE_4__ {int index; } ;
struct TYPE_6__ {scalar_t__ ipx_dest_net; scalar_t__ ipx_source_net; TYPE_1__ last_hop; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPX_NODE_LEN ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ IPX_TYPE_PPROP ; 
 scalar_t__ PACKET_HOST ; 
 int /*<<< orphan*/  ipx_broadcast_node ; 
 struct ipxhdr* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct ipx_interface*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipx_interface*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipx_interface*) ; 
 int FUNC5 (struct ipx_interface*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipx_interface*) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ipx_interface *intrfc, struct sk_buff *skb)
{
	struct ipxhdr *ipx = FUNC1(skb);
	int rc = 0;

	FUNC4(intrfc);

	/* See if we should update our network number */
	if (!intrfc->if_netnum) /* net number of intrfc not known yet */
		FUNC3(intrfc, skb);

	FUNC0(skb)->last_hop.index = -1;
	if (ipx->ipx_type == IPX_TYPE_PPROP) {
		rc = FUNC5(intrfc, skb);
		if (rc)
			goto out_free_skb;
	}

	/* local processing follows */
	if (!FUNC0(skb)->ipx_dest_net)
		FUNC0(skb)->ipx_dest_net = intrfc->if_netnum;
	if (!FUNC0(skb)->ipx_source_net)
		FUNC0(skb)->ipx_source_net = intrfc->if_netnum;

	/* it doesn't make sense to route a pprop packet, there's no meaning
	 * in the ipx_dest_net for such packets */
	if (ipx->ipx_type != IPX_TYPE_PPROP &&
	    intrfc->if_netnum != FUNC0(skb)->ipx_dest_net) {
		/* We only route point-to-point packets. */
		if (skb->pkt_type == PACKET_HOST) {
			skb = FUNC10(skb, GFP_ATOMIC);
			if (skb)
				rc = FUNC7(skb);
			goto out_intrfc;
		}

		goto out_free_skb;
	}

	/* see if we should keep it */
	if (!FUNC9(ipx_broadcast_node, ipx->ipx_dest.node, IPX_NODE_LEN) ||
	    !FUNC9(intrfc->if_node, ipx->ipx_dest.node, IPX_NODE_LEN)) {
		rc = FUNC2(intrfc, skb, 0);
		goto out_intrfc;
	}

	/* we couldn't pawn it off so unload it */
out_free_skb:
	FUNC8(skb);
out_intrfc:
	FUNC6(intrfc);
	return rc;
}