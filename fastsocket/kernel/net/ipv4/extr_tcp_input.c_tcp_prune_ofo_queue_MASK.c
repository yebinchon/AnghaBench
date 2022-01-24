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
struct TYPE_2__ {scalar_t__ sack_ok; } ;
struct tcp_sock {TYPE_1__ rx_opt; int /*<<< orphan*/  out_of_order_queue; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_OFOPRUNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk)
{
	struct tcp_sock *tp = FUNC6(sk);
	int res = 0;

	if (!FUNC3(&tp->out_of_order_queue)) {
		FUNC0(FUNC4(sk), LINUX_MIB_OFOPRUNED);
		FUNC1(&tp->out_of_order_queue);

		/* Reset SACK state.  A conforming SACK implementation will
		 * do the same at a timeout based retransmit.  When a connection
		 * is in a sad state like this, we care only about integrity
		 * of the connection not performance.
		 */
		if (tp->rx_opt.sack_ok)
			FUNC5(&tp->rx_opt);
		FUNC2(sk);
		res = 1;
	}
	return res;
}