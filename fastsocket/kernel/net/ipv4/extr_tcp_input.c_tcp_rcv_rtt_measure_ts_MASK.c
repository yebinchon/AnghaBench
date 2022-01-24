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
struct TYPE_6__ {scalar_t__ rcv_tsecr; } ;
struct tcp_sock {TYPE_2__ rx_opt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {scalar_t__ end_seq; scalar_t__ seq; } ;
struct TYPE_5__ {scalar_t__ rcv_mss; } ;
struct TYPE_7__ {TYPE_1__ icsk_ack; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct sk_buff const*) ; 
 TYPE_3__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_sock*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 scalar_t__ tcp_time_stamp ; 

__attribute__((used)) static inline void FUNC4(struct sock *sk,
					  const struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC3(sk);
	if (tp->rx_opt.rcv_tsecr &&
	    (FUNC0(skb)->end_seq -
	     FUNC0(skb)->seq >= FUNC1(sk)->icsk_ack.rcv_mss))
		FUNC2(tp, tcp_time_stamp - tp->rx_opt.rcv_tsecr, 0);
}