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
typedef  void* u32 ;
struct TYPE_4__ {int dsack; } ;
struct tcp_sock {TYPE_1__* duplicate_sack; TYPE_2__ rx_opt; int /*<<< orphan*/  rcv_nxt; } ;
struct sock {int dummy; } ;
struct TYPE_3__ {void* end_seq; void* start_seq; } ;

/* Variables and functions */
 int LINUX_MIB_TCPDSACKOFOSENT ; 
 int LINUX_MIB_TCPDSACKOLDSENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ sysctl_tcp_dsack ; 
 scalar_t__ FUNC3 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, u32 seq, u32 end_seq)
{
	struct tcp_sock *tp = FUNC4(sk);

	if (FUNC3(tp) && sysctl_tcp_dsack) {
		int mib_idx;

		if (FUNC1(seq, tp->rcv_nxt))
			mib_idx = LINUX_MIB_TCPDSACKOLDSENT;
		else
			mib_idx = LINUX_MIB_TCPDSACKOFOSENT;

		FUNC0(FUNC2(sk), mib_idx);

		tp->rx_opt.dsack = 1;
		tp->duplicate_sack[0].start_seq = seq;
		tp->duplicate_sack[0].end_seq = end_seq;
	}
}