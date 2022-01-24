#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {TYPE_2__* rsk_ops; int /*<<< orphan*/  retrans; } ;
struct dccp_request_sock {scalar_t__ dreq_iss; int /*<<< orphan*/  dreq_isr; } ;
struct TYPE_10__ {scalar_t__ dccpd_ack_seq; int /*<<< orphan*/  dccpd_reset_code; int /*<<< orphan*/  dccpd_seq; } ;
struct TYPE_9__ {scalar_t__ dccph_type; } ;
struct TYPE_8__ {TYPE_1__* icsk_af_ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* send_reset ) (struct sock*,struct sk_buff*) ;int /*<<< orphan*/  (* rtx_syn_ack ) (struct sock*,struct request_sock*) ;} ;
struct TYPE_6__ {struct sock* (* syn_recv_sock ) (struct sock*,struct sk_buff*,struct request_sock*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ DCCP_PKT_ACK ; 
 scalar_t__ DCCP_PKT_DATAACK ; 
 scalar_t__ DCCP_PKT_REQUEST ; 
 scalar_t__ DCCP_PKT_RESET ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_PACKET_ERROR ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_TOO_BUSY ; 
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sock*,struct dccp_request_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct dccp_request_sock* FUNC5 (struct request_sock*) ; 
 TYPE_3__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct request_sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct request_sock*,struct request_sock**) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct request_sock*,struct request_sock**) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct request_sock*) ; 
 struct sock* FUNC12 (struct sock*,struct sk_buff*,struct request_sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct sk_buff*) ; 

struct sock *FUNC14(struct sock *sk, struct sk_buff *skb,
			    struct request_sock *req,
			    struct request_sock **prev)
{
	struct sock *child = NULL;
	struct dccp_request_sock *dreq = FUNC5(req);

	/* Check for retransmitted REQUEST */
	if (FUNC2(skb)->dccph_type == DCCP_PKT_REQUEST) {

		if (FUNC1(FUNC0(skb)->dccpd_seq, dreq->dreq_isr)) {
			FUNC4("Retransmitted REQUEST\n");
			dreq->dreq_isr = FUNC0(skb)->dccpd_seq;
			/*
			 * Send another RESPONSE packet
			 * To protect against Request floods, increment retrans
			 * counter (backoff, monitored by dccp_response_timer).
			 */
			req->retrans++;
			req->rsk_ops->rtx_syn_ack(sk, req);
		}
		/* Network Duplicate, discard packet */
		return NULL;
	}

	FUNC0(skb)->dccpd_reset_code = DCCP_RESET_CODE_PACKET_ERROR;

	if (FUNC2(skb)->dccph_type != DCCP_PKT_ACK &&
	    FUNC2(skb)->dccph_type != DCCP_PKT_DATAACK)
		goto drop;

	/* Invalid ACK */
	if (FUNC0(skb)->dccpd_ack_seq != dreq->dreq_iss) {
		FUNC4("Invalid ACK number: ack_seq=%llu, "
			      "dreq_iss=%llu\n",
			      (unsigned long long)
			      FUNC0(skb)->dccpd_ack_seq,
			      (unsigned long long) dreq->dreq_iss);
		goto drop;
	}

	if (FUNC3(sk, dreq, skb))
		 goto drop;

	child = FUNC6(sk)->icsk_af_ops->syn_recv_sock(sk, skb, req, NULL);
	if (child == NULL)
		goto listen_overflow;

	FUNC10(sk, req, prev);
	FUNC9(sk, req);
	FUNC7(sk, req, child);
out:
	return child;
listen_overflow:
	FUNC4("listen_overflow!\n");
	FUNC0(skb)->dccpd_reset_code = DCCP_RESET_CODE_TOO_BUSY;
drop:
	if (FUNC2(skb)->dccph_type != DCCP_PKT_RESET)
		req->rsk_ops->send_reset(sk, skb);

	FUNC8(sk, req, prev);
	goto out;
}