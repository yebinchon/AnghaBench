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
typedef  int u32 ;
struct sock {TYPE_1__* sk_prot; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct dst_entry {int dummy; } ;
struct dccp_request_sock {int /*<<< orphan*/  dreq_service; int /*<<< orphan*/  dreq_isr; int /*<<< orphan*/  dreq_iss; } ;
struct dccp_hdr_response {int dummy; } ;
struct dccp_hdr_ext {int dummy; } ;
struct dccp_hdr {int dccph_doff; int dccph_x; void* dccph_type; int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_sport; } ;
struct TYPE_8__ {int const dccpd_opt_len; int /*<<< orphan*/  dccpd_seq; void* dccpd_type; } ;
struct TYPE_7__ {int /*<<< orphan*/  dccph_resp_service; } ;
struct TYPE_6__ {int acked; int /*<<< orphan*/  rmt_port; int /*<<< orphan*/  loc_port; } ;
struct TYPE_5__ {int /*<<< orphan*/  max_header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_OUTSEGS ; 
 void* DCCP_PKT_RESPONSE ; 
 TYPE_4__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct dccp_request_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 TYPE_3__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dccp_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct dccp_request_sock*,struct sk_buff*) ; 
 struct dccp_request_sock* FUNC10 (struct request_sock*) ; 
 struct dccp_hdr* FUNC11 (struct sk_buff*,int const) ; 
 int /*<<< orphan*/  FUNC12 (struct dst_entry*) ; 
 TYPE_2__* FUNC13 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC17 (struct sock*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC18(struct sock *sk, struct dst_entry *dst,
				   struct request_sock *req)
{
	struct dccp_hdr *dh;
	struct dccp_request_sock *dreq;
	const u32 dccp_header_size = sizeof(struct dccp_hdr) +
				     sizeof(struct dccp_hdr_ext) +
				     sizeof(struct dccp_hdr_response);
	struct sk_buff *skb = FUNC17(sk, sk->sk_prot->max_header, 1,
					   GFP_ATOMIC);
	if (skb == NULL)
		return NULL;

	/* Reserve space for headers. */
	FUNC16(skb, sk->sk_prot->max_header);

	FUNC15(skb, FUNC12(dst));

	dreq = FUNC10(req);
	if (FUNC13(req)->acked)	/* increase ISS upon retransmission */
		FUNC8(&dreq->dreq_iss);
	FUNC1(skb)->dccpd_type = DCCP_PKT_RESPONSE;
	FUNC1(skb)->dccpd_seq  = dreq->dreq_iss;

	/* Resolve feature dependencies resulting from choice of CCID */
	if (FUNC3(dreq))
		goto response_failed;

	if (FUNC9(dreq, skb))
		goto response_failed;

	/* Build and checksum header */
	dh = FUNC11(skb, dccp_header_size);

	dh->dccph_sport	= FUNC13(req)->loc_port;
	dh->dccph_dport	= FUNC13(req)->rmt_port;
	dh->dccph_doff	= (dccp_header_size +
			   FUNC1(skb)->dccpd_opt_len) / 4;
	dh->dccph_type	= DCCP_PKT_RESPONSE;
	dh->dccph_x	= 1;
	FUNC7(dh, dreq->dreq_iss);
	FUNC6(FUNC4(skb), dreq->dreq_isr);
	FUNC5(skb)->dccph_resp_service = dreq->dreq_service;

	FUNC2(skb);

	/* We use `acked' to remember that a Response was already sent. */
	FUNC13(req)->acked = 1;
	FUNC0(DCCP_MIB_OUTSEGS);
	return skb;
response_failed:
	FUNC14(skb);
	return NULL;
}