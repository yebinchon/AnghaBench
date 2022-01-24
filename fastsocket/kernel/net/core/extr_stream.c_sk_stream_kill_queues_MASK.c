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
struct sock {int sk_wmem_queued; int sk_forward_alloc; int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_error_queue; int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct sock *sk)
{
	/* First the read buffer. */
	FUNC1(&sk->sk_receive_queue);

	/* Next, the error queue. */
	FUNC1(&sk->sk_error_queue);

	/* Next, the write queue. */
	FUNC0(!FUNC3(&sk->sk_write_queue));

	/* Account for returned memory. */
	FUNC2(sk);

	FUNC0(sk->sk_wmem_queued);
	FUNC0(sk->sk_forward_alloc);

	/* It is _impossible_ for the backlog to contain anything
	 * when we get here.  All user references to this socket
	 * have gone away, only the net layer knows can touch it.
	 */
}