#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  users; } ;
struct request_sock {int dummy; } ;
struct TYPE_5__ {scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_6__ {TYPE_1__ bits; } ;
struct ipv6_pinfo {TYPE_2__ rxopt; } ;
struct inet6_request_sock {int /*<<< orphan*/  iif; int /*<<< orphan*/  rmt_addr; struct sk_buff* pktopts; int /*<<< orphan*/  loc_addr; } ;
struct dccp_skb_cb {int /*<<< orphan*/  dccpd_seq; int /*<<< orphan*/  dccpd_reset_code; } ;
struct dccp_request_sock {int /*<<< orphan*/  dreq_service; int /*<<< orphan*/  dreq_iss; int /*<<< orphan*/  dreq_isr; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_8__ {int /*<<< orphan*/  dccph_req_service; } ;
struct TYPE_7__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_ATTEMPTFAILS ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_BAD_SERVICE_CODE ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_TOO_BUSY ; 
 struct dccp_skb_cb* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  DCCP_TIMEOUT_INIT ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dccp6_request_sock_ops ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/  const) ; 
 TYPE_4__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sock*,struct dccp_request_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct request_sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct dccp_request_sock* FUNC7 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sock*,struct request_sock*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct request_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 struct request_sock* FUNC15 (int /*<<< orphan*/ *) ; 
 struct inet6_request_sock* FUNC16 (struct request_sock*) ; 
 struct ipv6_pinfo* FUNC17 (struct sock*) ; 
 scalar_t__ FUNC18 (struct sock*) ; 
 int FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC22 (struct sk_buff*) ; 
 scalar_t__ FUNC23 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct request_sock*) ; 
 scalar_t__ FUNC26 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 scalar_t__ FUNC27 (struct sock*) ; 

__attribute__((used)) static int FUNC28(struct sock *sk, struct sk_buff *skb)
{
	struct request_sock *req;
	struct dccp_request_sock *dreq;
	struct inet6_request_sock *ireq6;
	struct ipv6_pinfo *np = FUNC17(sk);
	const __be32 service = FUNC4(skb)->dccph_req_service;
	struct dccp_skb_cb *dcb = FUNC1(skb);

	if (skb->protocol == FUNC12(ETH_P_IP))
		return FUNC9(sk, skb);

	if (!FUNC24(skb))
		return 0;	/* discard, don't send a reset here */

	if (FUNC3(sk, service)) {
		dcb->dccpd_reset_code = DCCP_RESET_CODE_BAD_SERVICE_CODE;
		goto drop;
	}
	/*
	 * There are no SYN attacks on IPv6, yet...
	 */
	dcb->dccpd_reset_code = DCCP_RESET_CODE_TOO_BUSY;
	if (FUNC18(sk))
		goto drop;

	if (FUNC27(sk) && FUNC19(sk) > 1)
		goto drop;

	req = FUNC15(&dccp6_request_sock_ops);
	if (req == NULL)
		goto drop;

	if (FUNC6(req, FUNC8(sk), skb))
		goto drop_and_free;

	dreq = FUNC7(req);
	if (FUNC5(sk, dreq, skb))
		goto drop_and_free;

	if (FUNC26(sk, skb, req))
		goto drop_and_free;

	ireq6 = FUNC16(req);
	FUNC20(&ireq6->rmt_addr, &FUNC22(skb)->saddr);
	FUNC20(&ireq6->loc_addr, &FUNC22(skb)->daddr);

	if (FUNC23(sk, skb) ||
	    np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo ||
	    np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim) {
		FUNC2(&skb->users);
		ireq6->pktopts = skb;
	}
	ireq6->iif = sk->sk_bound_dev_if;

	/* So that link locals have meaning */
	if (!sk->sk_bound_dev_if &&
	    FUNC21(&ireq6->rmt_addr) & IPV6_ADDR_LINKLOCAL)
		ireq6->iif = FUNC14(skb);

	/*
	 * Step 3: Process LISTEN state
	 *
	 *   Set S.ISR, S.GSR, S.SWL, S.SWH from packet or Init Cookie
	 *
	 *   In fact we defer setting S.GSR, S.SWL, S.SWH to
	 *   dccp_create_openreq_child.
	 */
	dreq->dreq_isr	   = dcb->dccpd_seq;
	dreq->dreq_iss	   = FUNC10(skb);
	dreq->dreq_service = service;

	if (FUNC11(sk, req))
		goto drop_and_free;

	FUNC13(sk, req, DCCP_TIMEOUT_INIT);
	return 0;

drop_and_free:
	FUNC25(req);
drop:
	FUNC0(DCCP_MIB_ATTEMPTFAILS);
	return -1;
}