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
struct sock {scalar_t__ sk_state; } ;

/* Variables and functions */
 scalar_t__ DCCP_LISTEN ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct sock *sk = (struct sock *)data;

	/* Only process if socket is not in use. */
	FUNC0(sk);
	if (FUNC4(sk)) {
		/* Try again later. */
		FUNC3(sk, HZ / 20);
		goto out;
	}

	if (sk->sk_state == DCCP_LISTEN) {
		FUNC2(sk);
		goto out;
	}
out:
	FUNC1(sk);
	FUNC5(sk);
}