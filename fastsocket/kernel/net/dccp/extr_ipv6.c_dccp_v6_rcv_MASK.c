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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct dccp_hdr {scalar_t__ dccph_type; int dccph_cscov; int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_sport; } ;
struct TYPE_6__ {scalar_t__ dccpd_type; int /*<<< orphan*/  dccpd_reset_code; int /*<<< orphan*/  dccpd_ack_seq; int /*<<< orphan*/  dccpd_seq; } ;
struct TYPE_5__ {int dccps_pcrlen; } ;
struct TYPE_4__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 scalar_t__ DCCP_PKT_RESET ; 
 int /*<<< orphan*/  DCCP_PKT_WITHOUT_ACK_SEQ ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_NO_CONNECTION ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ DCCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 struct sock* FUNC2 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dccp_hashinfo ; 
 struct dccp_hdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct dccp_hdr const*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 TYPE_2__* FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC19(struct sk_buff *skb)
{
	const struct dccp_hdr *dh;
	struct sock *sk;
	int min_cov;

	/* Step 1: Check header basics */

	if (FUNC6(skb))
		goto discard_it;

	/* Step 1: If header checksum is incorrect, drop packet and return. */
	if (FUNC10(skb, &FUNC14(skb)->saddr,
				     &FUNC14(skb)->daddr)) {
		FUNC1("dropped packet with invalid checksum\n");
		goto discard_it;
	}

	dh = FUNC3(skb);

	FUNC0(skb)->dccpd_seq  = FUNC5(dh);
	FUNC0(skb)->dccpd_type = dh->dccph_type;

	if (FUNC7(skb))
		FUNC0(skb)->dccpd_ack_seq = DCCP_PKT_WITHOUT_ACK_SEQ;
	else
		FUNC0(skb)->dccpd_ack_seq = FUNC4(skb);

	/* Step 2:
	 *	Look up flow ID in table and get corresponding socket */
	sk = FUNC2(&dccp_hashinfo, skb,
			        dh->dccph_sport, dh->dccph_dport);
	/*
	 * Step 2:
	 *	If no socket ...
	 */
	if (sk == NULL) {
		FUNC8("failed to look up flow ID in table and "
			      "get corresponding socket\n");
		goto no_dccp_socket;
	}

	/*
	 * Step 2:
	 *	... or S.state == TIMEWAIT,
	 *		Generate Reset(No Connection) unless P.type == Reset
	 *		Drop packet and return
	 */
	if (sk->sk_state == DCCP_TIME_WAIT) {
		FUNC8("sk->sk_state == DCCP_TIME_WAIT: do_time_wait\n");
		FUNC13(FUNC12(sk));
		goto no_dccp_socket;
	}

	/*
	 * RFC 4340, sec. 9.2.1: Minimum Checksum Coverage
	 *	o if MinCsCov = 0, only packets with CsCov = 0 are accepted
	 *	o if MinCsCov > 0, also accept packets with CsCov >= MinCsCov
	 */
	min_cov = FUNC9(sk)->dccps_pcrlen;
	if (dh->dccph_cscov  &&  (min_cov == 0 || dh->dccph_cscov < min_cov))  {
		FUNC8("Packet CsCov %d does not satisfy MinCsCov %d\n",
			      dh->dccph_cscov, min_cov);
		/* FIXME: send Data Dropped option (see also dccp_v4_rcv) */
		goto discard_and_relse;
	}

	if (!FUNC18(sk, XFRM_POLICY_IN, skb))
		goto discard_and_relse;

	return FUNC16(sk, skb, 1) ? -1 : 0;

no_dccp_socket:
	if (!FUNC18(NULL, XFRM_POLICY_IN, skb))
		goto discard_it;
	/*
	 * Step 2:
	 *	If no socket ...
	 *		Generate Reset(No Connection) unless P.type == Reset
	 *		Drop packet and return
	 */
	if (dh->dccph_type != DCCP_PKT_RESET) {
		FUNC0(skb)->dccpd_reset_code =
					DCCP_RESET_CODE_NO_CONNECTION;
		FUNC11(sk, skb);
	}

discard_it:
	FUNC15(skb);
	return 0;

discard_and_relse:
	FUNC17(sk);
	goto discard_it;
}