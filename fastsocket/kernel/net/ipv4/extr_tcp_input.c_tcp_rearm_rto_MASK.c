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
struct tcp_sock {int /*<<< orphan*/  packets_out; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  icsk_rto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICSK_TIME_RETRANS ; 
 int /*<<< orphan*/  TCP_RTO_MAX ; 
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct tcp_sock *tp = FUNC3(sk);

	if (!tp->packets_out) {
		FUNC1(sk, ICSK_TIME_RETRANS);
	} else {
		FUNC2(sk, ICSK_TIME_RETRANS,
					  FUNC0(sk)->icsk_rto, TCP_RTO_MAX);
	}
}