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
struct tcp_sock {int fackets_out; int reordering; int sacked_out; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcp_sock*) ; 
 scalar_t__ FUNC1 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, int fast_rexmit)
{
	struct tcp_sock *tp = FUNC3(sk);

	if (FUNC1(tp)) {
		FUNC2(sk, 1);
	} else if (FUNC0(tp)) {
		int lost = tp->fackets_out - tp->reordering;
		if (lost <= 0)
			lost = 1;
		FUNC2(sk, lost);
	} else {
		int sacked_upto = tp->sacked_out - tp->reordering;
		if (sacked_upto < fast_rexmit)
			sacked_upto = fast_rexmit;
		FUNC2(sk, sacked_upto);
	}

	FUNC4(sk);
}