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
struct tipc_port {scalar_t__ usr_handle; } ;
struct sock {int /*<<< orphan*/  sk_sleep; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tipc_port *tport)
{
	struct sock *sk = (struct sock *)tport->usr_handle;

	if (FUNC0(sk->sk_sleep))
		FUNC1(sk->sk_sleep);
}