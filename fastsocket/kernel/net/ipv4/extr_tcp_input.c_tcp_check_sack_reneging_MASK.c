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
struct sock {int dummy; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_rto; int /*<<< orphan*/  icsk_retransmits; } ;

/* Variables and functions */
 int FLAG_SACK_RENEGING ; 
 int /*<<< orphan*/  ICSK_TIME_RETRANS ; 
 int /*<<< orphan*/  LINUX_MIB_TCPSACKRENEGING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_RTO_MAX ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, int flag)
{
	if (flag & FLAG_SACK_RENEGING) {
		struct inet_connection_sock *icsk = FUNC1(sk);
		FUNC0(FUNC3(sk), LINUX_MIB_TCPSACKRENEGING);

		FUNC4(sk, 1);
		icsk->icsk_retransmits++;
		FUNC5(sk, FUNC6(sk));
		FUNC2(sk, ICSK_TIME_RETRANS,
					  icsk->icsk_rto, TCP_RTO_MAX);
		return 1;
	}
	return 0;
}