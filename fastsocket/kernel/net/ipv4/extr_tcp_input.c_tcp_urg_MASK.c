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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct tcphdr {int doff; scalar_t__ syn; int /*<<< orphan*/  seq; scalar_t__ urg; } ;
struct tcp_sock {scalar_t__ urg_data; scalar_t__ urg_seq; } ;
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;} ;
struct sk_buff {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 scalar_t__ TCP_URG_NOTYET ; 
 int TCP_URG_VALID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct tcphdr*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, struct sk_buff *skb, struct tcphdr *th)
{
	struct tcp_sock *tp = FUNC6(sk);

	/* Check if we get a new urgent pointer - normally not. */
	if (th->urg)
		FUNC5(sk, th);

	/* Do we wait for any urgent data? - normally not... */
	if (tp->urg_data == TCP_URG_NOTYET) {
		u32 ptr = tp->urg_seq - FUNC1(th->seq) + (th->doff * 4) -
			  th->syn;

		/* Is the urgent pointer pointing into this packet? */
		if (ptr < skb->len) {
			u8 tmp;
			if (FUNC2(skb, ptr, &tmp, 1))
				FUNC0();
			tp->urg_data = TCP_URG_VALID | tmp;
			if (!FUNC3(sk, SOCK_DEAD))
				sk->sk_data_ready(sk, 0);
		}
	}
}