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
struct l2cap_chan_list {struct sock* head; } ;
struct TYPE_2__ {struct sock* prev_c; struct sock* next_c; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 

__attribute__((used)) static inline void FUNC2(struct l2cap_chan_list *l, struct sock *sk)
{
	FUNC1(sk);

	if (l->head)
		FUNC0(l->head)->prev_c = sk;

	FUNC0(sk)->next_c = l->head;
	FUNC0(sk)->prev_c = NULL;
	l->head = sk;
}