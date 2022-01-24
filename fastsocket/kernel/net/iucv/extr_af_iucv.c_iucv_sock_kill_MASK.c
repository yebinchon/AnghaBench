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
struct sock {scalar_t__ sk_socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  iucv_sk_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	if (!FUNC1(sk, SOCK_ZAPPED) || sk->sk_socket)
		return;

	FUNC0(&iucv_sk_list, sk);
	FUNC3(sk, SOCK_DEAD);
	FUNC2(sk);
}