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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sock; } ;
struct ipxhdr {TYPE_1__ ipx_dest; } ;
struct ipx_interface {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ipxhdr* FUNC0 (struct sk_buff*) ; 
 struct ipx_interface* ipx_primary_net ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC2 (struct ipx_interface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sock* FUNC4 (struct ipx_interface*,struct ipxhdr*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct ipx_interface *intrfc,
			       struct sk_buff *skb, int copy)
{
	struct ipxhdr *ipx = FUNC0(skb);
	struct sock *sock1 = NULL, *sock2 = NULL;
	struct sk_buff *skb1 = NULL, *skb2 = NULL;
	int rc;

	if (intrfc == ipx_primary_net && FUNC5(ipx->ipx_dest.sock) == 0x451)
		sock1 = FUNC4(intrfc, ipx);
	if (!sock1)
		/* No special socket found, forward the packet the normal way */
		sock1 = FUNC2(intrfc, ipx->ipx_dest.sock);

	/*
	 * We need to check if there is a primary net and if
	 * this is addressed to one of the *SPECIAL* sockets because
	 * these need to be propagated to the primary net.
	 * The *SPECIAL* socket list contains: 0x452(SAP), 0x453(RIP) and
	 * 0x456(Diagnostic).
	 */

	if (ipx_primary_net && intrfc != ipx_primary_net) {
		const int dsock = FUNC5(ipx->ipx_dest.sock);

		if (dsock == 0x452 || dsock == 0x453 || dsock == 0x456)
			/* The appropriate thing to do here is to dup the
			 * packet and route to the primary net interface via
			 * ipxitf_send; however, we'll cheat and just demux it
			 * here. */
			sock2 = FUNC2(ipx_primary_net,
							ipx->ipx_dest.sock);
	}

	/*
	 * If there is nothing to do return. The kfree will cancel any charging.
	 */
	rc = 0;
	if (!sock1 && !sock2) {
		if (!copy)
			FUNC3(skb);
		goto out;
	}

	/*
	 * This next segment of code is a little awkward, but it sets it up
	 * so that the appropriate number of copies of the SKB are made and
	 * that skb1 and skb2 point to it (them) so that it (they) can be
	 * demuxed to sock1 and/or sock2.  If we are unable to make enough
	 * copies, we do as much as is possible.
	 */

	if (copy)
		skb1 = FUNC6(skb, GFP_ATOMIC);
	else
		skb1 = skb;

	rc = -ENOMEM;
	if (!skb1)
		goto out_put;

	/* Do we need 2 SKBs? */
	if (sock1 && sock2)
		skb2 = FUNC6(skb1, GFP_ATOMIC);
	else
		skb2 = skb1;

	if (sock1)
		FUNC1(sock1, skb1);

	if (!skb2)
		goto out_put;

	if (sock2)
		FUNC1(sock2, skb2);

	rc = 0;
out_put:
	if (sock1)
		FUNC7(sock1);
	if (sock2)
		FUNC7(sock2);
out:
	return rc;
}