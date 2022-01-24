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
struct TYPE_2__ {scalar_t__ memory; int /*<<< orphan*/  prequeue; } ;
struct tcp_sock {TYPE_1__ ucopy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPPREQUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct sk_buff *skb;
	struct tcp_sock *tp = FUNC6(sk);

	FUNC0(FUNC5(sk), LINUX_MIB_TCPPREQUEUED);

	/* RX process wants to run with disabled BHs, though it is not
	 * necessary */
	FUNC2();
	while ((skb = FUNC1(&tp->ucopy.prequeue)) != NULL)
		FUNC4(sk, skb);
	FUNC3();

	/* Clear memory counter. */
	tp->ucopy.memory = 0;
}