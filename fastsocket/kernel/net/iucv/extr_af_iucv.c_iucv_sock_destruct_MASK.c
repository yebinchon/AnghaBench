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
struct sock {int /*<<< orphan*/  sk_forward_alloc; int /*<<< orphan*/  sk_wmem_queued; int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_error_queue; int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	FUNC4(&sk->sk_receive_queue);
	FUNC4(&sk->sk_error_queue);

	FUNC3(sk);

	if (!FUNC5(sk, SOCK_DEAD)) {
		FUNC2("Attempt to release alive iucv socket %p\n", sk);
		return;
	}

	FUNC0(FUNC1(&sk->sk_rmem_alloc));
	FUNC0(FUNC1(&sk->sk_wmem_alloc));
	FUNC0(sk->sk_wmem_queued);
	FUNC0(sk->sk_forward_alloc);
}