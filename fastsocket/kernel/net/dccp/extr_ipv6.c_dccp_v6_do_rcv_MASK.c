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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  len; } ;
struct TYPE_2__ {scalar_t__ all; } ;
struct ipv6_pinfo {TYPE_1__ rxopt; } ;

/* Variables and functions */
 scalar_t__ DCCP_LISTEN ; 
 scalar_t__ DCCP_OPEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sock*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC7 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sock *sk, struct sk_buff *skb)
{
	struct ipv6_pinfo *np = FUNC9(sk);
	struct sk_buff *opt_skb = NULL;

	/* Imagine: socket is IPv6. IPv4 packet arrives,
	   goes to IPv4 receive handler and backlogged.
	   From backlog it always goes here. Kerboom...
	   Fortunately, dccp_rcv_established and rcv_established
	   handle them correctly, but it is not case with
	   dccp_v6_hnd_req and dccp_v6_ctl_send_reset().   --ANK
	 */

	if (skb->protocol == FUNC8(ETH_P_IP))
		return FUNC5(sk, skb);

	if (FUNC11(sk, skb))
		goto discard;

	/*
	 * socket locking is here for SMP purposes as backlog rcv is currently
	 * called with bh processing disabled.
	 */

	/* Do Stevens' IPV6_PKTOPTIONS.

	   Yes, guys, it is the only place in our code, where we
	   may make it not affecting IPv4.
	   The rest of code is protocol independent,
	   and I do not like idea to uglify IPv4.

	   Actually, all the idea behind IPV6_PKTOPTIONS
	   looks not very well thought. For now we latch
	   options, received in the last packet, enqueued
	   by tcp. Feel free to propose better solution.
					       --ANK (980728)
	 */
	if (np->rxopt.all)
	/*
	 * FIXME: Add handling of IPV6_PKTOPTIONS skb. See the comments below
	 *        (wrt ipv6_pktopions) and net/ipv6/tcp_ipv6.c for an example.
	 */
		opt_skb = FUNC12(skb, GFP_ATOMIC);

	if (sk->sk_state == DCCP_OPEN) { /* Fast path */
		if (FUNC3(sk, skb, FUNC2(skb), skb->len))
			goto reset;
		if (opt_skb) {
			/* XXX This is where we would goto ipv6_pktoptions. */
			FUNC0(opt_skb);
		}
		return 0;
	}

	/*
	 *  Step 3: Process LISTEN state
	 *     If S.state == LISTEN,
	 *	 If P.type == Request or P contains a valid Init Cookie option,
	 *	      (* Must scan the packet's options to check for Init
	 *		 Cookies.  Only Init Cookies are processed here,
	 *		 however; other options are processed in Step 8.  This
	 *		 scan need only be performed if the endpoint uses Init
	 *		 Cookies *)
	 *	      (* Generate a new socket and switch to that socket *)
	 *	      Set S := new socket for this port pair
	 *	      S.state = RESPOND
	 *	      Choose S.ISS (initial seqno) or set from Init Cookies
	 *	      Initialize S.GAR := S.ISS
	 *	      Set S.ISR, S.GSR, S.SWL, S.SWH from packet or Init Cookies
	 *	      Continue with S.state == RESPOND
	 *	      (* A Response packet will be generated in Step 11 *)
	 *	 Otherwise,
	 *	      Generate Reset(No Connection) unless P.type == Reset
	 *	      Drop packet and return
	 *
	 * NOTE: the check for the packet types is done in
	 *	 dccp_rcv_state_process
	 */
	if (sk->sk_state == DCCP_LISTEN) {
		struct sock *nsk = FUNC7(sk, skb);

		if (nsk == NULL)
			goto discard;
		/*
		 * Queue it on the new socket if the new socket is active,
		 * otherwise we just shortcircuit this and continue with
		 * the new socket..
		 */
		if (nsk != sk) {
			if (FUNC1(sk, nsk, skb))
				goto reset;
			if (opt_skb != NULL)
				FUNC0(opt_skb);
			return 0;
		}
	}

	if (FUNC4(sk, skb, FUNC2(skb), skb->len))
		goto reset;
	if (opt_skb) {
		/* XXX This is where we would goto ipv6_pktoptions. */
		FUNC0(opt_skb);
	}
	return 0;

reset:
	FUNC6(sk, skb);
discard:
	if (opt_skb != NULL)
		FUNC0(opt_skb);
	FUNC10(skb);
	return 0;
}