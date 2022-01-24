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
struct sock {int sk_err; } ;
struct l2cap_chan_list {int /*<<< orphan*/  lock; struct sock* head; } ;
struct l2cap_conn {struct l2cap_chan_list chan_list; } ;
struct TYPE_2__ {scalar_t__ force_reliable; struct sock* next_c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct l2cap_conn *conn, int err)
{
	struct l2cap_chan_list *l = &conn->chan_list;
	struct sock *sk;

	FUNC0("conn %p", conn);

	FUNC2(&l->lock);

	for (sk = l->head; sk; sk = FUNC1(sk)->next_c) {
		if (FUNC1(sk)->force_reliable)
			sk->sk_err = err;
	}

	FUNC3(&l->lock);
}