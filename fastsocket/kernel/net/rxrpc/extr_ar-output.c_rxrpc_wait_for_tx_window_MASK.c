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
struct rxrpc_sock {int /*<<< orphan*/  sk; } ;
struct rxrpc_call {int /*<<< orphan*/  tx_waitq; int /*<<< orphan*/  acks_winsz; int /*<<< orphan*/  acks_tail; int /*<<< orphan*/  acks_head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  myself ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC8 (long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (long) ; 

__attribute__((used)) static int FUNC12(struct rxrpc_sock *rx,
				    struct rxrpc_call *call,
				    long *timeo)
{
	FUNC1(myself, current);
	int ret;

	FUNC2(",{%d},%ld",
	       FUNC0(call->acks_head, call->acks_tail, call->acks_winsz),
	       *timeo);

	FUNC4(&call->tx_waitq, &myself);

	for (;;) {
		FUNC9(TASK_INTERRUPTIBLE);
		ret = 0;
		if (FUNC0(call->acks_head, call->acks_tail,
			       call->acks_winsz) > 0)
			break;
		if (FUNC10(current)) {
			ret = FUNC11(*timeo);
			break;
		}

		FUNC6(&rx->sk);
		*timeo = FUNC8(*timeo);
		FUNC5(&rx->sk);
	}

	FUNC7(&call->tx_waitq, &myself);
	FUNC9(TASK_RUNNING);
	FUNC3(" = %d", ret);
	return ret;
}