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
typedef  scalar_t__ u16 ;
struct sock {int dummy; } ;
struct l2cap_chan_list {struct sock* head; } ;
struct TYPE_2__ {scalar_t__ dcid; struct sock* next_c; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC1(struct l2cap_chan_list *l, u16 cid)
{
	struct sock *s;
	for (s = l->head; s; s = FUNC0(s)->next_c) {
		if (FUNC0(s)->dcid == cid)
			break;
	}
	return s;
}