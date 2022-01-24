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
struct tcp_sock {scalar_t__ undo_marker; int /*<<< orphan*/  undo_retrans; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,char*) ; 
 int /*<<< orphan*/  LINUX_MIB_TCPDSACKUNDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct tcp_sock *tp = FUNC3(sk);

	if (tp->undo_marker && !tp->undo_retrans) {
		FUNC0(sk, "D-SACK");
		FUNC4(sk, true);
		tp->undo_marker = 0;
		FUNC1(FUNC2(sk), LINUX_MIB_TCPDSACKUNDO);
	}
}