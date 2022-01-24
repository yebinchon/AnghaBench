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
struct tcp_sock {unsigned int packets_out; int frto_counter; int /*<<< orphan*/  snd_nxt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  end_seq; } ;
struct TYPE_3__ {int /*<<< orphan*/  icsk_rto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICSK_TIME_RETRANS ; 
 int /*<<< orphan*/  TCP_RTO_MAX ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC4(sk);
	unsigned int prior_packets = tp->packets_out;

	FUNC3(sk, skb);
	tp->snd_nxt = FUNC0(skb)->end_seq;

	/* Don't override Nagle indefinately with F-RTO */
	if (tp->frto_counter == 2)
		tp->frto_counter = 3;

	tp->packets_out += FUNC5(skb);
	if (!prior_packets)
		FUNC2(sk, ICSK_TIME_RETRANS,
					  FUNC1(sk)->icsk_rto, TCP_RTO_MAX);
}