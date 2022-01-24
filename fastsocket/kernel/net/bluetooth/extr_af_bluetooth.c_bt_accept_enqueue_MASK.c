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
struct sock {int /*<<< orphan*/  sk_ack_backlog; } ;
struct TYPE_2__ {struct sock* parent; int /*<<< orphan*/  accept_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

void FUNC4(struct sock *parent, struct sock *sk)
{
	FUNC0("parent %p, sk %p", parent, sk);

	FUNC3(sk);
	FUNC2(&FUNC1(sk)->accept_q, &FUNC1(parent)->accept_q);
	FUNC1(sk)->parent = parent;
	parent->sk_ack_backlog++;
}