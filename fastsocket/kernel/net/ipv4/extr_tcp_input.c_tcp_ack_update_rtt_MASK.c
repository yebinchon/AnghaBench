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
struct TYPE_2__ {scalar_t__ rcv_tsecr; scalar_t__ saw_tstamp; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,scalar_t__ const,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int const) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static inline void FUNC3(struct sock *sk, const int flag,
				      const s32 seq_rtt)
{
	const struct tcp_sock *tp = FUNC2(sk);
	/* Note that peer MAY send zero echo. In this case it is ignored. (rfc1323) */
	if (tp->rx_opt.saw_tstamp && tp->rx_opt.rcv_tsecr)
		FUNC1(sk, flag);
	else if (seq_rtt >= 0)
		FUNC0(sk, seq_rtt, flag);
}