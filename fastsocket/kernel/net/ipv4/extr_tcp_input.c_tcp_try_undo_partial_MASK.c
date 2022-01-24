#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcp_sock {scalar_t__ reordering; scalar_t__ retrans_out; scalar_t__ retrans_stamp; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,char*) ; 
 int /*<<< orphan*/  LINUX_MIB_TCPPARTIALUNDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct tcp_sock*) ; 
 scalar_t__ FUNC4 (struct tcp_sock*) ; 
 scalar_t__ FUNC5 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, int acked)
{
	struct tcp_sock *tp = FUNC6(sk);
	/* Partial ACK arrived. Force Hoe's retransmit. */
	int failed = FUNC4(tp) || (FUNC3(tp) > tp->reordering);

	if (FUNC5(tp)) {
		/* Plain luck! Hole if filled with delayed
		 * packet, rather than with a retransmit.
		 */
		if (tp->retrans_out == 0)
			tp->retrans_stamp = 0;

		FUNC8(sk, FUNC3(tp) + acked, 1);

		FUNC0(sk, "Hoe");
		FUNC7(sk, false);
		FUNC1(FUNC2(sk), LINUX_MIB_TCPPARTIALUNDO);

		/* So... Do not make Hoe's retransmit yet.
		 * If the first packet was delayed, the rest
		 * ones are most probably delayed as well.
		 */
		failed = 0;
	}
	return failed;
}