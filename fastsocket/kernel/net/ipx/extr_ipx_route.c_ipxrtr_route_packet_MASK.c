#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_ipx {int /*<<< orphan*/  sipx_port; int /*<<< orphan*/  sipx_node; scalar_t__ sipx_network; int /*<<< orphan*/  sipx_type; } ;
struct sock {scalar_t__ sk_no_check; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_9__ {int /*<<< orphan*/  node; int /*<<< orphan*/  sock; } ;
struct TYPE_8__ {int /*<<< orphan*/  sock; int /*<<< orphan*/  node; } ;
struct ipxhdr {TYPE_4__ ipx_dest; void* ipx_checksum; TYPE_3__ ipx_source; int /*<<< orphan*/  ipx_type; void* ipx_pktsize; } ;
struct ipx_sock {int /*<<< orphan*/  port; TYPE_2__* intrfc; int /*<<< orphan*/  node; } ;
struct ipx_route {int /*<<< orphan*/  ir_router_node; scalar_t__ ir_routed; struct ipx_interface* ir_intrfc; } ;
struct ipx_interface {int if_ipx_offset; void* if_dlink_type; int /*<<< orphan*/  if_node; scalar_t__ if_netnum; } ;
struct iovec {int dummy; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_10__ {scalar_t__ ipx_dest_net; scalar_t__ ipx_source_net; TYPE_1__ last_hop; scalar_t__ ipx_tctrl; } ;
struct TYPE_7__ {int /*<<< orphan*/  if_node; scalar_t__ if_netnum; } ;

/* Variables and functions */
 int ENETUNREACH ; 
 int IPX_FRAME_8023 ; 
 int /*<<< orphan*/  IPX_NODE_LEN ; 
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (struct ipxhdr*,size_t) ; 
 struct ipxhdr* FUNC3 (struct sk_buff*) ; 
 struct ipx_interface* ipx_primary_net ; 
 struct ipx_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipx_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipx_interface*) ; 
 int FUNC7 (struct ipx_interface*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ipx_route* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ipx_route*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct iovec*,size_t) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 struct sk_buff* FUNC18 (struct sock*,size_t,int,int*) ; 

int FUNC19(struct sock *sk, struct sockaddr_ipx *usipx,
			struct iovec *iov, size_t len, int noblock)
{
	struct sk_buff *skb;
	struct ipx_sock *ipxs = FUNC4(sk);
	struct ipx_interface *intrfc;
	struct ipxhdr *ipx;
	size_t size;
	int ipx_offset;
	struct ipx_route *rt = NULL;
	int rc;

	/* Find the appropriate interface on which to send packet */
	if (!usipx->sipx_network && ipx_primary_net) {
		usipx->sipx_network = ipx_primary_net->if_netnum;
		intrfc = ipx_primary_net;
	} else {
		rt = FUNC8(usipx->sipx_network);
		rc = -ENETUNREACH;
		if (!rt)
			goto out;
		intrfc = rt->ir_intrfc;
	}

	FUNC5(intrfc);
	ipx_offset = intrfc->if_ipx_offset;
	size = sizeof(struct ipxhdr) + len + ipx_offset;

	skb = FUNC18(sk, size, noblock, &rc);
	if (!skb)
		goto out_put;

	FUNC15(skb, ipx_offset);
	skb->sk = sk;

	/* Fill in IPX header */
	FUNC16(skb);
	FUNC17(skb);
	FUNC14(skb, sizeof(struct ipxhdr));
	ipx = FUNC3(skb);
	ipx->ipx_pktsize = FUNC1(len + sizeof(struct ipxhdr));
	FUNC0(skb)->ipx_tctrl = 0;
	ipx->ipx_type 	 = usipx->sipx_type;

	FUNC0(skb)->last_hop.index = -1;
#ifdef CONFIG_IPX_INTERN
	IPX_SKB_CB(skb)->ipx_source_net = ipxs->intrfc->if_netnum;
	memcpy(ipx->ipx_source.node, ipxs->node, IPX_NODE_LEN);
#else
	rc = FUNC13(ipxs->port);
	if (rc == 0x453 || rc == 0x452) {
		/* RIP/SAP special handling for mars_nwe */
		FUNC0(skb)->ipx_source_net = intrfc->if_netnum;
		FUNC11(ipx->ipx_source.node, intrfc->if_node, IPX_NODE_LEN);
	} else {
		FUNC0(skb)->ipx_source_net = ipxs->intrfc->if_netnum;
		FUNC11(ipx->ipx_source.node, ipxs->intrfc->if_node,
			IPX_NODE_LEN);
	}
#endif	/* CONFIG_IPX_INTERN */
	ipx->ipx_source.sock		= ipxs->port;
	FUNC0(skb)->ipx_dest_net	= usipx->sipx_network;
	FUNC11(ipx->ipx_dest.node, usipx->sipx_node, IPX_NODE_LEN);
	ipx->ipx_dest.sock		= usipx->sipx_port;

	rc = FUNC12(FUNC14(skb, len), iov, len);
	if (rc) {
		FUNC10(skb);
		goto out_put;
	}

	/* Apply checksum. Not allowed on 802.3 links. */
	if (sk->sk_no_check || intrfc->if_dlink_type == FUNC1(IPX_FRAME_8023))
		ipx->ipx_checksum = FUNC1(0xFFFF);
	else
		ipx->ipx_checksum = FUNC2(ipx, len + sizeof(struct ipxhdr));

	rc = FUNC7(intrfc, skb, (rt && rt->ir_routed) ?
			 rt->ir_router_node : ipx->ipx_dest.node);
out_put:
	FUNC6(intrfc);
	if (rt)
		FUNC9(rt);
out:
	return rc;
}