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
struct tcp_sock {scalar_t__ rcv_nxt; scalar_t__ rcv_wup; scalar_t__ rcv_wnd; int /*<<< orphan*/  out_of_order_queue; } ;
struct sock {int dummy; } ;
struct TYPE_3__ {scalar_t__ rcv_mss; } ;
struct TYPE_4__ {TYPE_1__ icsk_ack; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sock*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, int ofo_possible)
{
	struct tcp_sock *tp = FUNC6(sk);

	    /* More than one full frame received... */
	if (((tp->rcv_nxt - tp->rcv_wup) > FUNC1(sk)->icsk_ack.rcv_mss
	     /* ... and right edge of window advances far enough.
	      * (tcp_recvmsg() will send ACK otherwise). Or...
	      */
	     && FUNC0(sk) >= tp->rcv_wnd) ||
	    /* We ACK each frame or... */
	    FUNC3(sk) ||
	    /* We have out of order data. */
	    (ofo_possible && FUNC2(&tp->out_of_order_queue))) {
		/* Then ack it now */
		FUNC4(sk);
	} else {
		/* Else, send delayed ack. */
		FUNC5(sk);
	}
}