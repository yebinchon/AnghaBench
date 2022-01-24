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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_request_sock {int /*<<< orphan*/  rmt_addr; int /*<<< orphan*/  loc_addr; } ;
struct dccp_skb_cb {int /*<<< orphan*/  dccpd_seq; int /*<<< orphan*/  dccpd_reset_code; } ;
struct dccp_request_sock {int /*<<< orphan*/  dreq_service; int /*<<< orphan*/  dreq_iss; int /*<<< orphan*/  dreq_isr; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {int /*<<< orphan*/  dccph_req_service; } ;
struct TYPE_5__ {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {int rt_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_ATTEMPTFAILS ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_BAD_SERVICE_CODE ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_TOO_BUSY ; 
 struct dccp_skb_cb* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  DCCP_TIMEOUT_INIT ; 
 int RTCF_BROADCAST ; 
 int RTCF_MULTICAST ; 
 scalar_t__ FUNC2 (struct sock*,int /*<<< orphan*/  const) ; 
 TYPE_3__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sock*,struct dccp_request_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct request_sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  dccp_request_sock_ops ; 
 struct dccp_request_sock* FUNC6 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct request_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sock*) ; 
 int FUNC12 (struct sock*) ; 
 struct request_sock* FUNC13 (int /*<<< orphan*/ *) ; 
 struct inet_request_sock* FUNC14 (struct request_sock*) ; 
 TYPE_2__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct request_sock*) ; 
 scalar_t__ FUNC17 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 scalar_t__ FUNC18 (struct sock*) ; 
 TYPE_1__* FUNC19 (struct sk_buff*) ; 

int FUNC20(struct sock *sk, struct sk_buff *skb)
{
	struct inet_request_sock *ireq;
	struct request_sock *req;
	struct dccp_request_sock *dreq;
	const __be32 service = FUNC3(skb)->dccph_req_service;
	struct dccp_skb_cb *dcb = FUNC1(skb);

	/* Never answer to DCCP_PKT_REQUESTs send to broadcast or multicast */
	if (FUNC19(skb)->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST))
		return 0;	/* discard, don't send a reset here */

	if (FUNC2(sk, service)) {
		dcb->dccpd_reset_code = DCCP_RESET_CODE_BAD_SERVICE_CODE;
		goto drop;
	}
	/*
	 * TW buckets are converted to open requests without
	 * limitations, they conserve resources and peer is
	 * evidently real one.
	 */
	dcb->dccpd_reset_code = DCCP_RESET_CODE_TOO_BUSY;
	if (FUNC11(sk))
		goto drop;

	/*
	 * Accept backlog is full. If we have already queued enough
	 * of warm entries in syn queue, drop request. It is better than
	 * clogging syn queue with openreqs with exponentially increasing
	 * timeout.
	 */
	if (FUNC18(sk) && FUNC12(sk) > 1)
		goto drop;

	req = FUNC13(&dccp_request_sock_ops);
	if (req == NULL)
		goto drop;

	if (FUNC5(req, FUNC7(sk), skb))
		goto drop_and_free;

	dreq = FUNC6(req);
	if (FUNC4(sk, dreq, skb))
		goto drop_and_free;

	if (FUNC17(sk, skb, req))
		goto drop_and_free;

	ireq = FUNC14(req);
	ireq->loc_addr = FUNC15(skb)->daddr;
	ireq->rmt_addr = FUNC15(skb)->saddr;

	/*
	 * Step 3: Process LISTEN state
	 *
	 * Set S.ISR, S.GSR, S.SWL, S.SWH from packet or Init Cookie
	 *
	 * In fact we defer setting S.GSR, S.SWL, S.SWH to
	 * dccp_create_openreq_child.
	 */
	dreq->dreq_isr	   = dcb->dccpd_seq;
	dreq->dreq_iss	   = FUNC8(skb);
	dreq->dreq_service = service;

	if (FUNC9(sk, req))
		goto drop_and_free;

	FUNC10(sk, req, DCCP_TIMEOUT_INIT);
	return 0;

drop_and_free:
	FUNC16(req);
drop:
	FUNC0(DCCP_MIB_ATTEMPTFAILS);
	return -1;
}