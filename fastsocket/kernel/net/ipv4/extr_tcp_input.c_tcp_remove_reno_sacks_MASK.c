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
struct tcp_sock {int sacked_out; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int) ; 
 struct tcp_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, int acked)
{
	struct tcp_sock *tp = FUNC1(sk);

	if (acked > 0) {
		/* One ACK acked hole. The rest eat duplicate ACKs. */
		if (acked - 1 >= tp->sacked_out)
			tp->sacked_out = 0;
		else
			tp->sacked_out -= acked - 1;
	}
	FUNC0(sk, acked);
	FUNC2(tp);
}