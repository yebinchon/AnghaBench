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
struct sk_buff {int len; } ;
struct rtgenmsg {int rtgen_family; } ;
struct netlink_callback {int* args; int /*<<< orphan*/  nlh; } ;
struct neigh_table {int family; struct neigh_table* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct neigh_table*,struct sk_buff*,struct netlink_callback*) ; 
 struct neigh_table* neigh_tables ; 
 int /*<<< orphan*/  neigh_tbl_lock ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct neigh_table *tbl;
	int t, family, s_t;

	FUNC3(&neigh_tbl_lock);
	family = ((struct rtgenmsg *) FUNC2(cb->nlh))->rtgen_family;
	s_t = cb->args[0];

	for (tbl = neigh_tables, t = 0; tbl; tbl = tbl->next, t++) {
		if (t < s_t || (family && tbl->family != family))
			continue;
		if (t > s_t)
			FUNC0(&cb->args[1], 0, sizeof(cb->args) -
						sizeof(cb->args[0]));
		if (FUNC1(tbl, skb, cb) < 0)
			break;
	}
	FUNC4(&neigh_tbl_lock);

	cb->args[0] = t;
	return skb->len;
}