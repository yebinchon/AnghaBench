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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int rcv_wscale; } ;
struct tcp_sock {int rcv_wnd; scalar_t__ pred_flags; TYPE_1__ rx_opt; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  rcv_wup; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 unsigned int MAX_TCP_WINDOW ; 
 int FUNC1 (struct sock*) ; 
 int FUNC2 (int,unsigned int) ; 
 scalar_t__ sysctl_tcp_workaround_signed_windows ; 
 int FUNC3 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static u16 FUNC5(struct sock *sk)
{
	struct tcp_sock *tp = FUNC4(sk);
	u32 cur_win = FUNC3(tp);
	u32 new_win = FUNC1(sk);

	/* Never shrink the offered window */
	if (new_win < cur_win) {
		/* Danger Will Robinson!
		 * Don't update rcv_wup/rcv_wnd here or else
		 * we will not be able to advertise a zero
		 * window in time.  --DaveM
		 *
		 * Relax Will Robinson.
		 */
		new_win = FUNC0(cur_win, 1 << tp->rx_opt.rcv_wscale);
	}
	tp->rcv_wnd = new_win;
	tp->rcv_wup = tp->rcv_nxt;

	/* Make sure we do not exceed the maximum possible
	 * scaled window.
	 */
	if (!tp->rx_opt.rcv_wscale && sysctl_tcp_workaround_signed_windows)
		new_win = FUNC2(new_win, MAX_TCP_WINDOW);
	else
		new_win = FUNC2(new_win, (65535U << tp->rx_opt.rcv_wscale));

	/* RFC1323 scaling applied */
	new_win >>= tp->rx_opt.rcv_wscale;

	/* If we advertise zero window, disable fast path. */
	if (new_win == 0)
		tp->pred_flags = 0;

	return new_win;
}