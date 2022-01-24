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
typedef  scalar_t__ u32 ;
struct tcphdr {int /*<<< orphan*/  window; scalar_t__ ack; } ;
struct TYPE_4__ {int snd_wscale; scalar_t__ rcv_tsval; scalar_t__ ts_recent; } ;
struct tcp_sock {scalar_t__ rcv_nxt; scalar_t__ snd_una; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  int s32 ;
struct TYPE_6__ {scalar_t__ seq; scalar_t__ ack_seq; scalar_t__ end_seq; } ;
struct TYPE_5__ {int icsk_rto; } ;

/* Variables and functions */
 int HZ ; 
 TYPE_3__* FUNC0 (struct sk_buff const*) ; 
 TYPE_2__* FUNC1 (struct sock const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct tcphdr* FUNC3 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_sock*,scalar_t__,scalar_t__,int) ; 
 struct tcp_sock* FUNC5 (struct sock const*) ; 

__attribute__((used)) static int FUNC6(const struct sock *sk, const struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC5(sk);
	struct tcphdr *th = FUNC3(skb);
	u32 seq = FUNC0(skb)->seq;
	u32 ack = FUNC0(skb)->ack_seq;

	return (/* 1. Pure ACK with correct sequence number. */
		(th->ack && seq == FUNC0(skb)->end_seq && seq == tp->rcv_nxt) &&

		/* 2. ... and duplicate ACK. */
		ack == tp->snd_una &&

		/* 3. ... and does not update window. */
		!FUNC4(tp, ack, seq, FUNC2(th->window) << tp->rx_opt.snd_wscale) &&

		/* 4. ... and sits in replay window. */
		(s32)(tp->rx_opt.ts_recent - tp->rx_opt.rcv_tsval) <= (FUNC1(sk)->icsk_rto * 1024) / HZ);
}