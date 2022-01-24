#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_role; int /*<<< orphan*/ * dccps_hc_rx_ackvec; } ;
struct dccp_skb_cb {scalar_t__ dccpd_ack_seq; int /*<<< orphan*/  dccpd_seq; void* dccpd_reset_code; } ;
struct dccp_hdr {scalar_t__ dccph_type; } ;
struct TYPE_4__ {TYPE_1__* icsk_af_ops; } ;
struct TYPE_3__ {scalar_t__ (* conn_request ) (struct sock*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DCCP_ACKVEC_STATE_RECEIVED ; 
 int DCCP_CLOSED ; 
 int DCCP_LISTEN ; 
#define  DCCP_PARTOPEN 130 
 scalar_t__ DCCP_PKT_ACK ; 
 scalar_t__ DCCP_PKT_CLOSE ; 
 scalar_t__ DCCP_PKT_CLOSEREQ ; 
 scalar_t__ DCCP_PKT_DATA ; 
 scalar_t__ DCCP_PKT_DATAACK ; 
 scalar_t__ DCCP_PKT_REQUEST ; 
 scalar_t__ DCCP_PKT_RESET ; 
 scalar_t__ DCCP_PKT_RESPONSE ; 
 scalar_t__ DCCP_PKT_SYNC ; 
 scalar_t__ DCCP_PKT_SYNCACK ; 
 scalar_t__ DCCP_PKT_WITHOUT_ACK_SEQ ; 
#define  DCCP_REQUESTING 129 
 void* DCCP_RESET_CODE_NO_CONNECTION ; 
#define  DCCP_RESPOND 128 
 scalar_t__ DCCP_ROLE_CLIENT ; 
 struct dccp_skb_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int /*<<< orphan*/  SOCK_WAKE_IO ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sock*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sock*,struct sk_buff*) ; 
 int FUNC9 (struct sock*,struct sk_buff*,struct dccp_hdr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_buff*) ; 
 int FUNC11 (struct sock*,struct sk_buff*,struct dccp_hdr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct dccp_sock* FUNC13 (struct sock*) ; 
 TYPE_2__* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(struct sock *sk, struct sk_buff *skb,
			   struct dccp_hdr *dh, unsigned len)
{
	struct dccp_sock *dp = FUNC13(sk);
	struct dccp_skb_cb *dcb = FUNC0(skb);
	const int old_state = sk->sk_state;
	int queued = 0;

	/*
	 *  Step 3: Process LISTEN state
	 *
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
	 *	      Set S.ISR, S.GSR, S.SWL, S.SWH from packet or Init
	 *	      Cookies Continue with S.state == RESPOND
	 *	      (* A Response packet will be generated in Step 11 *)
	 *	 Otherwise,
	 *	      Generate Reset(No Connection) unless P.type == Reset
	 *	      Drop packet and return
	 */
	if (sk->sk_state == DCCP_LISTEN) {
		if (dh->dccph_type == DCCP_PKT_REQUEST) {
			if (FUNC14(sk)->icsk_af_ops->conn_request(sk,
								    skb) < 0)
				return 1;
			goto discard;
		}
		if (dh->dccph_type == DCCP_PKT_RESET)
			goto discard;

		/* Caller (dccp_v4_do_rcv) will send Reset */
		dcb->dccpd_reset_code = DCCP_RESET_CODE_NO_CONNECTION;
		return 1;
	} else if (sk->sk_state == DCCP_CLOSED) {
		dcb->dccpd_reset_code = DCCP_RESET_CODE_NO_CONNECTION;
		return 1;
	}

	if (sk->sk_state != DCCP_REQUESTING && sk->sk_state != DCCP_RESPOND) {
		if (FUNC3(sk, skb))
			goto discard;

		/*
		 * Step 8: Process options and mark acknowledgeable
		 */
		if (FUNC6(sk, NULL, skb))
			return 1;

		if (dcb->dccpd_ack_seq != DCCP_PKT_WITHOUT_ACK_SEQ)
			FUNC5(sk, skb);

		if (dp->dccps_hc_rx_ackvec != NULL &&
		    FUNC2(dp->dccps_hc_rx_ackvec, sk,
				    FUNC0(skb)->dccpd_seq,
				    DCCP_ACKVEC_STATE_RECEIVED))
			goto discard;

		FUNC4(sk, skb);
	}

	/*
	 *  Step 9: Process Reset
	 *	If P.type == Reset,
	 *		Tear down connection
	 *		S.state := TIMEWAIT
	 *		Set TIMEWAIT timer
	 *		Drop packet and return
	*/
	if (dh->dccph_type == DCCP_PKT_RESET) {
		FUNC10(sk, skb);
		return 0;
		/*
		 *   Step 7: Check for unexpected packet types
		 *      If (S.is_server and P.type == Response)
		 *	    or (S.is_client and P.type == Request)
		 *	    or (S.state == RESPOND and P.type == Data),
		 *	  Send Sync packet acknowledging P.seqno
		 *	  Drop packet and return
		 */
	} else if ((dp->dccps_role != DCCP_ROLE_CLIENT &&
		    dh->dccph_type == DCCP_PKT_RESPONSE) ||
		    (dp->dccps_role == DCCP_ROLE_CLIENT &&
		     dh->dccph_type == DCCP_PKT_REQUEST) ||
		    (sk->sk_state == DCCP_RESPOND &&
		     dh->dccph_type == DCCP_PKT_DATA)) {
		FUNC12(sk, dcb->dccpd_seq, DCCP_PKT_SYNC);
		goto discard;
	} else if (dh->dccph_type == DCCP_PKT_CLOSEREQ) {
		if (FUNC8(sk, skb))
			return 0;
		goto discard;
	} else if (dh->dccph_type == DCCP_PKT_CLOSE) {
		if (FUNC7(sk, skb))
			return 0;
		goto discard;
	}

	switch (sk->sk_state) {
	case DCCP_REQUESTING:
		queued = FUNC9(sk, skb, dh, len);
		if (queued >= 0)
			return queued;

		FUNC1(skb);
		return 0;

	case DCCP_RESPOND:
	case DCCP_PARTOPEN:
		queued = FUNC11(sk, skb,
								 dh, len);
		break;
	}

	if (dh->dccph_type == DCCP_PKT_ACK ||
	    dh->dccph_type == DCCP_PKT_DATAACK) {
		switch (old_state) {
		case DCCP_PARTOPEN:
			sk->sk_state_change(sk);
			FUNC15(sk, SOCK_WAKE_IO, POLL_OUT);
			break;
		}
	} else if (FUNC18(dh->dccph_type == DCCP_PKT_SYNC)) {
		FUNC12(sk, dcb->dccpd_seq, DCCP_PKT_SYNCACK);
		goto discard;
	}

	if (!queued) {
discard:
		FUNC1(skb);
	}
	return 0;
}