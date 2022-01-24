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
struct sock {int /*<<< orphan*/  sk_ack_backlog; } ;
struct iucv_sock {struct sock* parent; int /*<<< orphan*/  accept_q_lock; int /*<<< orphan*/  accept_q; } ;

/* Variables and functions */
 struct iucv_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct sock *sk)
{
	unsigned long flags;
	struct iucv_sock *par = FUNC0(FUNC0(sk)->parent);

	FUNC3(&par->accept_q_lock, flags);
	FUNC1(&FUNC0(sk)->accept_q);
	FUNC4(&par->accept_q_lock, flags);
	FUNC0(sk)->parent->sk_ack_backlog--;
	FUNC0(sk)->parent = NULL;
	FUNC2(sk);
}