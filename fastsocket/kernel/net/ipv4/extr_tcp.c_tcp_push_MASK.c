#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int MSG_MORE ; 
 int TCP_NAGLE_CORK ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int,int) ; 
 scalar_t__ FUNC1 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_sock*,int,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 
 struct sk_buff* FUNC6 (struct sock*) ; 

__attribute__((used)) static inline void FUNC7(struct sock *sk, int flags, int mss_now,
			    int nonagle)
{
	struct tcp_sock *tp = FUNC5(sk);

	if (FUNC4(sk)) {
		struct sk_buff *skb = FUNC6(sk);
		if (!(flags & MSG_MORE) || FUNC1(tp))
			FUNC2(tp, skb);
		FUNC3(tp, flags, skb);
		FUNC0(sk, mss_now,
					  (flags & MSG_MORE) ? TCP_NAGLE_CORK : nonagle);
	}
}