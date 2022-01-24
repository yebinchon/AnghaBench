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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct l2cap_chan_list {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct sock* FUNC0 (struct l2cap_chan_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct sock *FUNC4(struct l2cap_chan_list *l, u16 cid)
{
	struct sock *s;
	FUNC2(&l->lock);
	s = FUNC0(l, cid);
	if (s)
		FUNC1(s);
	FUNC3(&l->lock);
	return s;
}