#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {scalar_t__ rcv_nxt; } ;
struct sock {int sk_state; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; int /*<<< orphan*/  rxhash; } ;
struct TYPE_7__ {scalar_t__ rxtclass; scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_8__ {TYPE_1__ bits; scalar_t__ all; } ;
struct ipv6_pinfo {int /*<<< orphan*/  pktoptions; TYPE_2__ rxopt; int /*<<< orphan*/  mcast_hops; int /*<<< orphan*/  mcast_oif; } ;
struct TYPE_11__ {scalar_t__ end_seq; } ;
struct TYPE_10__ {int /*<<< orphan*/  hop_limit; } ;
struct TYPE_9__ {int /*<<< orphan*/  rcv_tos; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCP_LISTEN ; 
 int /*<<< orphan*/  TCP_MIB_INERRS ; 
 TYPE_6__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct ipv6_pinfo* FUNC6 (struct sock*) ; 
 TYPE_4__* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 TYPE_3__* FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (struct sock*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC22 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct tcp_sock* FUNC23 (struct sock*) ; 
 int FUNC24 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC25 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC26 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC28 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC29(struct sock *sk, struct sk_buff *skb)
{
	struct ipv6_pinfo *np = FUNC6(sk);
	struct tcp_sock *tp;
	struct sk_buff *opt_skb = NULL;

	/* Imagine: socket is IPv6. IPv4 packet arrives,
	   goes to IPv4 receive handler and backlogged.
	   From backlog it always goes here. Kerboom...
	   Fortunately, tcp_rcv_established and rcv_established
	   handle them correctly, but it is not case with
	   tcp_v6_hnd_req and tcp_v6_send_reset().   --ANK
	 */

	if (skb->protocol == FUNC4(ETH_P_IP))
		return FUNC24(sk, skb);

#ifdef CONFIG_TCP_MD5SIG
	if (tcp_v6_inbound_md5_hash (sk, skb))
		goto discard;
#endif

	if (FUNC12(sk, skb))
		goto discard;

	/*
	 *	socket locking is here for SMP purposes as backlog rcv
	 *	is currently called with bh processing disabled.
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
		opt_skb = FUNC13(skb, GFP_ATOMIC);

	if (sk->sk_state == TCP_ESTABLISHED) { /* Fast path */
		FUNC0(sk);
		FUNC16(sk, skb->rxhash);
		if (FUNC21(sk, skb, FUNC19(skb), skb->len))
			goto reset;
		FUNC0(sk);
		if (opt_skb)
			goto ipv6_pktoptions;
		return 0;
	}

	if (skb->len < FUNC20(skb) || FUNC17(skb))
		goto csum_err;

	if (sk->sk_state == TCP_LISTEN) {
		struct sock *nsk = FUNC25(sk, skb);
		if (!nsk)
			goto discard;

		/*
		 * Queue it on the new socket if the new socket is active,
		 * otherwise we just shortcircuit this and continue with
		 * the new socket..
		 */
		if(nsk != sk) {
			FUNC16(nsk, skb->rxhash);
			if (FUNC18(sk, nsk, skb))
				goto reset;
			if (opt_skb)
				FUNC3(opt_skb);
			return 0;
		}
	} else
		FUNC16(sk, skb->rxhash);

	FUNC0(sk);
	if (FUNC22(sk, skb, FUNC19(skb), skb->len))
		goto reset;
	FUNC0(sk);
	if (opt_skb)
		goto ipv6_pktoptions;
	return 0;

reset:
	FUNC27(sk, skb);
discard:
	if (opt_skb)
		FUNC3(opt_skb);
	FUNC10(skb);
	return 0;
csum_err:
	FUNC1(FUNC15(sk), TCP_MIB_INERRS);
	goto discard;


ipv6_pktoptions:
	/* Do you ask, what is it?

	   1. skb was enqueued by tcp.
	   2. skb is added to tail of read queue, rather than out of order.
	   3. socket is not in passive state.
	   4. Finally, it really contains options, which user wants to receive.
	 */
	tp = FUNC23(sk);
	if (FUNC2(opt_skb)->end_seq == tp->rcv_nxt &&
	    !((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_LISTEN))) {
		if (np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo)
			np->mcast_oif = FUNC5(opt_skb);
		if (np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim)
			np->mcast_hops = FUNC7(opt_skb)->hop_limit;
		if (np->rxopt.bits.rxtclass)
			FUNC11(sk)->rcv_tos = FUNC9(FUNC7(skb));
		if (FUNC8(sk, opt_skb)) {
			FUNC14(opt_skb, sk);
			opt_skb = FUNC28(&np->pktoptions, opt_skb);
		} else {
			FUNC3(opt_skb);
			opt_skb = FUNC28(&np->pktoptions, NULL);
		}
	}

	FUNC10(opt_skb);
	return 0;
}