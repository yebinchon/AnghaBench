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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ saw_tstamp; } ;
struct tcp_sock {TYPE_1__ rx_opt; int /*<<< orphan*/  rcv_wup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_sock*) ; 

__attribute__((used)) static inline void FUNC3(struct tcp_sock *tp, u32 seq)
{
	if (tp->rx_opt.saw_tstamp && !FUNC0(seq, tp->rcv_wup)) {
		/* PAWS bug workaround wrt. ACK frames, the PAWS discard
		 * extra check below makes sure this can only happen
		 * for pure ACK frames.  -DaveM
		 *
		 * Not only, also it occurs for expired timestamps.
		 */

		if (FUNC1(&tp->rx_opt, 0))
			FUNC2(tp);
	}
}