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
struct sock {int /*<<< orphan*/ * sk_socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct sock *sk)
{
	if (sk == NULL || sk->sk_socket == NULL)
		return;

	FUNC2(sk);
	FUNC6(sk->sk_socket);
	FUNC1(FUNC3(sk));
	FUNC4(sk, FUNC0(&init_net));
	FUNC5(sk);
}