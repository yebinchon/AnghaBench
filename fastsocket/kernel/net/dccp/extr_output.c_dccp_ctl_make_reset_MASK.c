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
typedef  int u32 ;
struct sock {TYPE_1__* sk_prot; } ;
struct sk_buff {int dummy; } ;
struct dccp_skb_cb {int dccpd_reset_code; scalar_t__ dccpd_ack_seq; int /*<<< orphan*/  dccpd_seq; int /*<<< orphan*/  dccpd_reset_data; } ;
struct dccp_hdr_reset {int dccph_reset_code; int /*<<< orphan*/ * dccph_reset_data; } ;
struct dccp_hdr_ext {int dummy; } ;
struct dccp_hdr {int dccph_doff; int dccph_x; int /*<<< orphan*/  dccph_type; int /*<<< orphan*/  dccph_sport; int /*<<< orphan*/  dccph_dport; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  DCCP_PKT_RESET ; 
 scalar_t__ DCCP_PKT_WITHOUT_ACK_SEQ ; 
#define  DCCP_RESET_CODE_MANDATORY_ERROR 130 
#define  DCCP_RESET_CODE_OPTION_ERROR 129 
#define  DCCP_RESET_CODE_PACKET_ERROR 128 
 struct dccp_skb_cb* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct dccp_hdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct dccp_hdr_reset* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dccp_hdr*,int /*<<< orphan*/ ) ; 
 struct dccp_hdr* FUNC9 (struct sk_buff*,int const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC12(struct sock *sk, struct sk_buff *rcv_skb)
{
	struct dccp_hdr *rxdh = FUNC4(rcv_skb), *dh;
	struct dccp_skb_cb *dcb = FUNC1(rcv_skb);
	const u32 dccp_hdr_reset_len = sizeof(struct dccp_hdr) +
				       sizeof(struct dccp_hdr_ext) +
				       sizeof(struct dccp_hdr_reset);
	struct dccp_hdr_reset *dhr;
	struct sk_buff *skb;

	skb = FUNC2(sk->sk_prot->max_header, GFP_ATOMIC);
	if (skb == NULL)
		return NULL;

	FUNC11(skb, sk->sk_prot->max_header);

	/* Swap the send and the receive. */
	dh = FUNC9(skb, dccp_hdr_reset_len);
	dh->dccph_type	= DCCP_PKT_RESET;
	dh->dccph_sport	= rxdh->dccph_dport;
	dh->dccph_dport	= rxdh->dccph_sport;
	dh->dccph_doff	= dccp_hdr_reset_len / 4;
	dh->dccph_x	= 1;

	dhr = FUNC6(skb);
	dhr->dccph_reset_code = dcb->dccpd_reset_code;

	switch (dcb->dccpd_reset_code) {
	case DCCP_RESET_CODE_PACKET_ERROR:
		dhr->dccph_reset_data[0] = rxdh->dccph_type;
		break;
	case DCCP_RESET_CODE_OPTION_ERROR:	/* fall through */
	case DCCP_RESET_CODE_MANDATORY_ERROR:
		FUNC10(dhr->dccph_reset_data, dcb->dccpd_reset_data, 3);
		break;
	}
	/*
	 * From RFC 4340, 8.3.1:
	 *   If P.ackno exists, set R.seqno := P.ackno + 1.
	 *   Else set R.seqno := 0.
	 */
	if (dcb->dccpd_ack_seq != DCCP_PKT_WITHOUT_ACK_SEQ)
		FUNC8(dh, FUNC0(dcb->dccpd_ack_seq, 1));
	FUNC7(FUNC5(skb), dcb->dccpd_seq);

	FUNC3(skb);
	return skb;
}