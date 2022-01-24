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
struct sock {int dummy; } ;
struct l2cap_chan_list {int /*<<< orphan*/  lock; } ;
struct l2cap_conn {struct l2cap_chan_list chan_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l2cap_conn*,struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct l2cap_conn *conn, struct sock *sk, struct sock *parent)
{
	struct l2cap_chan_list *l = &conn->chan_list;
	FUNC1(&l->lock);
	FUNC0(conn, sk, parent);
	FUNC2(&l->lock);
}