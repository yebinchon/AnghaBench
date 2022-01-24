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
struct tcp_sock {scalar_t__ retrans_out; scalar_t__ retrans_stamp; int /*<<< orphan*/  frto_counter; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_ca_state; } ;

/* Variables and functions */
 int FLAG_ECE ; 
 scalar_t__ TCP_CA_CWR ; 
 scalar_t__ TCP_CA_Open ; 
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcp_sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, int flag)
{
	struct tcp_sock *tp = FUNC4(sk);

	FUNC6(tp);

	if (!tp->frto_counter && tp->retrans_out == 0)
		tp->retrans_stamp = 0;

	if (flag & FLAG_ECE)
		FUNC2(sk, 1);

	if (FUNC0(sk)->icsk_ca_state != TCP_CA_CWR) {
		FUNC5(sk);
		if (FUNC0(sk)->icsk_ca_state != TCP_CA_Open)
			FUNC3(tp);
	} else {
		FUNC1(sk, flag);
	}
}