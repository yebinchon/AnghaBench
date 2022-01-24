#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_state; } ;
struct TYPE_4__ {TYPE_1__* parent; int /*<<< orphan*/  accept_q; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk_ack_backlog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

void FUNC4(struct sock *sk)
{
	FUNC0("sk %p state %d", sk, sk->sk_state);

	FUNC2(&FUNC1(sk)->accept_q);
	FUNC1(sk)->parent->sk_ack_backlog--;
	FUNC1(sk)->parent = NULL;
	FUNC3(sk);
}