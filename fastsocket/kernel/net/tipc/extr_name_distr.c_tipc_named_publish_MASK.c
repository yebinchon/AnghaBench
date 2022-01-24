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
struct sk_buff {int dummy; } ;
struct publication {int /*<<< orphan*/  local_list; } ;
struct distr_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_SIZE ; 
 int /*<<< orphan*/  PUBLICATION ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  publ_cnt ; 
 int /*<<< orphan*/  publ_root ; 
 int /*<<< orphan*/  FUNC5 (struct distr_item*,struct publication*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(struct publication *publ)
{
	struct sk_buff *buf;
	struct distr_item *item;

	FUNC2(&publ->local_list, &publ_root);
	publ_cnt++;

	buf = FUNC4(PUBLICATION, ITEM_SIZE, 0);
	if (!buf) {
		FUNC7("Publication distribution failure\n");
		return;
	}

	item = (struct distr_item *)FUNC3(FUNC0(buf));
	FUNC5(item, publ);
	FUNC1("tipc_named_withdraw: broadcasting publish msg\n");
	FUNC6(buf);
}