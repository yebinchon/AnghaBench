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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_osr; int /*<<< orphan*/  dccps_role; } ;
struct dccp_hdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dccpd_seq; } ;
struct TYPE_3__ {int dccph_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_INERRS ; 
#define  DCCP_PKT_ACK 136 
#define  DCCP_PKT_CLOSE 135 
#define  DCCP_PKT_CLOSEREQ 134 
#define  DCCP_PKT_DATA 133 
#define  DCCP_PKT_DATAACK 132 
#define  DCCP_PKT_REQUEST 131 
#define  DCCP_PKT_RESET 130 
#define  DCCP_PKT_RESPONSE 129 
#define  DCCP_PKT_SYNC 128 
 int DCCP_PKT_SYNCACK ; 
 int /*<<< orphan*/  DCCP_ROLE_CLIENT ; 
 int /*<<< orphan*/  DCCP_ROLE_LISTEN ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ,int) ; 
 struct dccp_sock* FUNC10 (struct sock*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sk_buff *skb,
				  const struct dccp_hdr *dh, const unsigned len)
{
	struct dccp_sock *dp = FUNC10(sk);

	switch (FUNC5(skb)->dccph_type) {
	case DCCP_PKT_DATAACK:
	case DCCP_PKT_DATA:
		/*
		 * FIXME: schedule DATA_DROPPED (RFC 4340, 11.7.2) if and when
		 * - sk_shutdown == RCV_SHUTDOWN, use Code 1, "Not Listening"
		 * - sk_receive_queue is full, use Code 2, "Receive Buffer"
		 */
		FUNC4(sk, skb);
		return 0;
	case DCCP_PKT_ACK:
		goto discard;
	case DCCP_PKT_RESET:
		/*
		 *  Step 9: Process Reset
		 *	If P.type == Reset,
		 *		Tear down connection
		 *		S.state := TIMEWAIT
		 *		Set TIMEWAIT timer
		 *		Drop packet and return
		 */
		FUNC8(sk, skb);
		return 0;
	case DCCP_PKT_CLOSEREQ:
		if (FUNC7(sk, skb))
			return 0;
		goto discard;
	case DCCP_PKT_CLOSE:
		if (FUNC6(sk, skb))
			return 0;
		goto discard;
	case DCCP_PKT_REQUEST:
		/* Step 7
		 *   or (S.is_server and P.type == Response)
		 *   or (S.is_client and P.type == Request)
		 *   or (S.state >= OPEN and P.type == Request
		 *	and P.seqno >= S.OSR)
		 *    or (S.state >= OPEN and P.type == Response
		 *	and P.seqno >= S.OSR)
		 *    or (S.state == RESPOND and P.type == Data),
		 *  Send Sync packet acknowledging P.seqno
		 *  Drop packet and return
		 */
		if (dp->dccps_role != DCCP_ROLE_LISTEN)
			goto send_sync;
		goto check_seq;
	case DCCP_PKT_RESPONSE:
		if (dp->dccps_role != DCCP_ROLE_CLIENT)
			goto send_sync;
check_seq:
		if (FUNC3(dp->dccps_osr,
				     FUNC1(skb)->dccpd_seq) >= 0) {
send_sync:
			FUNC9(sk, FUNC1(skb)->dccpd_seq,
				       DCCP_PKT_SYNC);
		}
		break;
	case DCCP_PKT_SYNC:
		FUNC9(sk, FUNC1(skb)->dccpd_seq,
			       DCCP_PKT_SYNCACK);
		/*
		 * From RFC 4340, sec. 5.7
		 *
		 * As with DCCP-Ack packets, DCCP-Sync and DCCP-SyncAck packets
		 * MAY have non-zero-length application data areas, whose
		 * contents receivers MUST ignore.
		 */
		goto discard;
	}

	FUNC0(DCCP_MIB_INERRS);
discard:
	FUNC2(skb);
	return 0;
}