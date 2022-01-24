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
struct sock {int dummy; } ;
struct l2cap_chan_list {int /*<<< orphan*/  lock; struct sock* head; } ;
struct TYPE_2__ {struct sock* next_c; struct sock* prev_c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct l2cap_chan_list *l, struct sock *sk)
{
	struct sock *next = FUNC1(sk)->next_c, *prev = FUNC1(sk)->prev_c;

	FUNC2(&l->lock);
	if (sk == l->head)
		l->head = next;

	if (next)
		FUNC1(next)->prev_c = prev;
	if (prev)
		FUNC1(prev)->next_c = next;
	FUNC3(&l->lock);

	FUNC0(sk);
}