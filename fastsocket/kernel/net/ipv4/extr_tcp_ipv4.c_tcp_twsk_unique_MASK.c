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
struct tcp_timewait_sock {int tw_ts_recent_stamp; int tw_snd_nxt; int /*<<< orphan*/  tw_ts_recent; } ;
struct TYPE_2__ {int ts_recent_stamp; int /*<<< orphan*/  ts_recent; } ;
struct tcp_sock {int write_seq; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ sysctl_tcp_tw_reuse ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 
 struct tcp_timewait_sock* FUNC3 (struct sock*) ; 

int FUNC4(struct sock *sk, struct sock *sktw, void *twp)
{
	const struct tcp_timewait_sock *tcptw = FUNC3(sktw);
	struct tcp_sock *tp = FUNC2(sk);

	/* With PAWS, it is safe from the viewpoint
	   of data integrity. Even without PAWS it is safe provided sequence
	   spaces do not overlap i.e. at data rates <= 80Mbit/sec.

	   Actually, the idea is close to VJ's one, only timestamp cache is
	   held not per host, but per port pair and TW bucket is used as state
	   holder.

	   If TW bucket has been already destroyed we fall back to VJ's scheme
	   and use initial timestamp retrieved from peer table.
	 */
	if (tcptw->tw_ts_recent_stamp &&
	    (twp == NULL || (sysctl_tcp_tw_reuse &&
			     FUNC0() - tcptw->tw_ts_recent_stamp > 1))) {
		tp->write_seq = tcptw->tw_snd_nxt + 65535 + 2;
		if (tp->write_seq == 0)
			tp->write_seq = 1;
		tp->rx_opt.ts_recent	   = tcptw->tw_ts_recent;
		tp->rx_opt.ts_recent_stamp = tcptw->tw_ts_recent_stamp;
		FUNC1(sktw);
		return 1;
	}

	return 0;
}