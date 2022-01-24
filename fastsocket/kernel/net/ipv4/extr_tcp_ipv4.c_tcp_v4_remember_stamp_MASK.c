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
struct TYPE_2__ {scalar_t__ ts_recent_stamp; scalar_t__ ts_recent; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
struct rtable {scalar_t__ rt_dst; struct inet_peer* peer; } ;
struct inet_sock {scalar_t__ daddr; } ;
struct inet_peer {scalar_t__ tcp_ts_stamp; scalar_t__ tcp_ts; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ TCP_PAWS_MSL ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 () ; 
 struct inet_peer* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inet_peer*) ; 
 struct inet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtable*,int) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 

int FUNC7(struct sock *sk)
{
	struct inet_sock *inet = FUNC4(sk);
	struct tcp_sock *tp = FUNC6(sk);
	struct rtable *rt = (struct rtable *)FUNC0(sk);
	struct inet_peer *peer = NULL;
	int release_it = 0;

	if (!rt || rt->rt_dst != inet->daddr) {
		peer = FUNC2(inet->daddr, 1);
		release_it = 1;
	} else {
		if (!rt->peer)
			FUNC5(rt, 1);
		peer = rt->peer;
	}

	if (peer) {
		if ((s32)(peer->tcp_ts - tp->rx_opt.ts_recent) <= 0 ||
		    (peer->tcp_ts_stamp + TCP_PAWS_MSL < FUNC1() &&
		     peer->tcp_ts_stamp <= tp->rx_opt.ts_recent_stamp)) {
			peer->tcp_ts_stamp = tp->rx_opt.ts_recent_stamp;
			peer->tcp_ts = tp->rx_opt.ts_recent;
		}
		if (release_it)
			FUNC3(peer);
		return 1;
	}

	return 0;
}