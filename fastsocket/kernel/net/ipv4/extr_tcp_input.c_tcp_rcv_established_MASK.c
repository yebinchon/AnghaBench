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
struct tcphdr {int doff; scalar_t__ ack; } ;
struct TYPE_5__ {unsigned int len; scalar_t__ task; } ;
struct TYPE_4__ {scalar_t__ ts_recent; scalar_t__ rcv_tsval; scalar_t__ saw_tstamp; } ;
struct tcp_sock {int pred_flags; scalar_t__ rcv_nxt; int tcp_header_len; scalar_t__ rcv_wup; scalar_t__ copied_seq; scalar_t__ snd_una; TYPE_2__ ucopy; TYPE_1__ rx_opt; int /*<<< orphan*/  snd_nxt; } ;
struct sock {int sk_forward_alloc; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sk_async_wait_queue; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {scalar_t__ truesize; int /*<<< orphan*/  len; } ;
typedef  scalar_t__ s32 ;
struct TYPE_6__ {scalar_t__ seq; scalar_t__ ack_seq; scalar_t__ end_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_DATA ; 
 int /*<<< orphan*/  FLAG_SLOWPATH ; 
 int /*<<< orphan*/  LINUX_MIB_TCPHPHITS ; 
 int /*<<< orphan*/  LINUX_MIB_TCPHPHITSTOUSER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int TCPOLEN_TSTAMP_ALIGNED ; 
 int TCP_HP_BITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_MIB_INERRS ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 scalar_t__ FUNC16 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 scalar_t__ FUNC21 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*,struct sk_buff*) ; 
 int FUNC23 (struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC24 (struct tcp_sock*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct tcp_sock*,scalar_t__) ; 
 struct tcp_sock* FUNC27 (struct sock*) ; 
 int /*<<< orphan*/  FUNC28 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC29 (struct sock*,struct sk_buff*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC30 (struct sock*,struct sk_buff*,struct tcphdr*,int) ; 

int FUNC31(struct sock *sk, struct sk_buff *skb,
			struct tcphdr *th, unsigned len)
{
	struct tcp_sock *tp = FUNC27(sk);

	/*
	 *	Header prediction.
	 *	The code loosely follows the one in the famous
	 *	"30 instruction TCP receive" Van Jacobson mail.
	 *
	 *	Van's trick is to deposit buffers into socket queue
	 *	on a device interrupt, to call tcp_recv function
	 *	on the receive process context and checksum and copy
	 *	the buffer to user space. smart...
	 *
	 *	Our current scheme is not silly either but we take the
	 *	extra cost of the net_bh soft interrupt processing...
	 *	We do checksum and copy also but from device to kernel.
	 */

	tp->rx_opt.saw_tstamp = 0;

	/*	pred_flags is 0xS?10 << 16 + snd_wnd
	 *	if header_prediction is to be made
	 *	'S' will always be tp->tcp_header_len >> 2
	 *	'?' will be 0 for the fast path, otherwise pred_flags is 0 to
	 *  turn it off	(when there are holes in the receive
	 *	 space for instance)
	 *	PSH flag is ignored.
	 */

	if ((FUNC23(th) & TCP_HP_BITS) == tp->pred_flags &&
	    FUNC2(skb)->seq == tp->rcv_nxt &&
	    !FUNC8(FUNC2(skb)->ack_seq, tp->snd_nxt)) {
		int tcp_header_len = tp->tcp_header_len;

		/* Timestamp header prediction: tcp_header_len
		 * is automatically equal to th->doff*4 due to pred_flags
		 * match.
		 */

		/* Check timestamp */
		if (tcp_header_len == sizeof(struct tcphdr) + TCPOLEN_TSTAMP_ALIGNED) {
			/* No? Slow path! */
			if (!FUNC24(tp, th))
				goto slow_path;

			/* If PAWS failed, check it more carefully in slow path */
			if ((s32)(tp->rx_opt.rcv_tsval - tp->rx_opt.ts_recent) < 0)
				goto slow_path;

			/* DO NOT update ts_recent here, if checksum fails
			 * and timestamp was corrupted part, it will result
			 * in a hung connection since we will drop all
			 * future packets due to the PAWS test.
			 */
		}

		if (len <= tcp_header_len) {
			/* Bulk data transfer: sender */
			if (len == tcp_header_len) {
				/* Predicted packet is in window by definition.
				 * seq == rcv_nxt and rcv_wup <= rcv_nxt.
				 * Hence, check seq<=rcv_wup reduces to:
				 */
				if (tcp_header_len ==
				    (sizeof(struct tcphdr) + TCPOLEN_TSTAMP_ALIGNED) &&
				    tp->rcv_nxt == tp->rcv_wup)
					FUNC28(tp);

				/* We know that such packets are checksummed
				 * on entry.
				 */
				FUNC14(sk, skb, 0);
				FUNC3(skb);
				FUNC20(sk);
				return 0;
			} else { /* Header too small */
				FUNC1(FUNC11(sk), TCP_MIB_INERRS);
				goto discard;
			}
		} else {
			int eaten = 0;
			int copied_early = 0;

			if (tp->copied_seq == tp->rcv_nxt &&
			    len - tcp_header_len <= tp->ucopy.len) {
#ifdef CONFIG_NET_DMA
				if (tcp_dma_try_early_copy(sk, skb, tcp_header_len)) {
					copied_early = 1;
					eaten = 1;
				}
#endif
				if (tp->ucopy.task == current &&
				    FUNC12(sk) && !copied_early) {
					FUNC4(TASK_RUNNING);

					if (!FUNC18(sk, skb, tcp_header_len))
						eaten = 1;
				}
				if (eaten) {
					/* Predicted packet is in window by definition.
					 * seq == rcv_nxt and rcv_wup <= rcv_nxt.
					 * Hence, check seq<=rcv_wup reduces to:
					 */
					if (tcp_header_len ==
					    (sizeof(struct tcphdr) +
					     TCPOLEN_TSTAMP_ALIGNED) &&
					    tp->rcv_nxt == tp->rcv_wup)
						FUNC28(tp);

					FUNC25(sk, skb);

					FUNC5(skb, tcp_header_len);
					tp->rcv_nxt = FUNC2(skb)->end_seq;
					FUNC0(FUNC11(sk), LINUX_MIB_TCPHPHITSTOUSER);
				}
				if (copied_early)
					FUNC17(sk, skb->len);
			}
			if (!eaten) {
				if (FUNC16(sk, skb))
					goto csum_error;

				/* Predicted packet is in window by definition.
				 * seq == rcv_nxt and rcv_wup <= rcv_nxt.
				 * Hence, check seq<=rcv_wup reduces to:
				 */
				if (tcp_header_len ==
				    (sizeof(struct tcphdr) + TCPOLEN_TSTAMP_ALIGNED) &&
				    tp->rcv_nxt == tp->rcv_wup)
					FUNC28(tp);

				FUNC25(sk, skb);

				if ((int)skb->truesize > sk->sk_forward_alloc)
					goto step5;

				FUNC0(FUNC11(sk), LINUX_MIB_TCPHPHITS);

				/* Bulk data transfer: receiver */
				FUNC5(skb, tcp_header_len);
				FUNC6(&sk->sk_receive_queue, skb);
				FUNC10(skb, sk);
				tp->rcv_nxt = FUNC2(skb)->end_seq;
			}

			FUNC22(sk, skb);

			if (FUNC2(skb)->ack_seq != tp->snd_una) {
				/* Well, only one small jumplet in fast path... */
				FUNC14(sk, skb, FLAG_DATA);
				FUNC20(sk);
				if (!FUNC9(sk))
					goto no_ack;
			}

			if (!copied_early || tp->rcv_nxt != tp->rcv_wup)
				FUNC7(sk, 0);
no_ack:
#ifdef CONFIG_NET_DMA
			if (copied_early)
				__skb_queue_tail(&sk->sk_async_wait_queue, skb);
			else
#endif
			if (eaten)
				FUNC3(skb);
			else
				sk->sk_data_ready(sk, 0);
			return 0;
		}
	}

slow_path:
	if (len < (th->doff << 2) || FUNC16(sk, skb))
		goto csum_error;

	/*
	 *	Standard slow path.
	 */

	if (!FUNC30(sk, skb, th, 1))
		return 0;

step5:
	if (th->ack && FUNC14(sk, skb, FLAG_SLOWPATH) < 0)
		goto discard;

	/* ts_recent update must be made after we are sure that the packet
	 * is in window.
	 */
	FUNC26(tp, FUNC2(skb)->seq);

	FUNC25(sk, skb);

	/* Process urgent data. */
	FUNC29(sk, skb, th);

	/* step 7: process the segment text */
	FUNC19(sk, skb);

	FUNC20(sk);
	FUNC15(sk);
	return 0;

csum_error:
	FUNC1(FUNC11(sk), TCP_MIB_INERRS);

discard:
	FUNC3(skb);
	return 0;
}