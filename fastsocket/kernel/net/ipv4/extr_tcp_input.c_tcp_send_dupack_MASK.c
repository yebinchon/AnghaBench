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
typedef  scalar_t__ u32 ;
struct tcp_sock {scalar_t__ rcv_nxt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ end_seq; scalar_t__ seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_DELAYEDACKLOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ sysctl_tcp_dsack ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 

__attribute__((used)) static void FUNC10(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC9(sk);

	if (FUNC1(skb)->end_seq != FUNC1(skb)->seq &&
	    FUNC3(FUNC1(skb)->seq, tp->rcv_nxt)) {
		FUNC0(FUNC4(sk), LINUX_MIB_DELAYEDACKLOST);
		FUNC6(sk);

		if (FUNC7(tp) && sysctl_tcp_dsack) {
			u32 end_seq = FUNC1(skb)->end_seq;

			if (FUNC2(FUNC1(skb)->end_seq, tp->rcv_nxt))
				end_seq = tp->rcv_nxt;
			FUNC5(sk, FUNC1(skb)->seq, end_seq);
		}
	}

	FUNC8(sk);
}