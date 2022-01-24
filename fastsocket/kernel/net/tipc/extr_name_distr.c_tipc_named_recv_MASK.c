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
typedef  int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct publication {int /*<<< orphan*/  subscr; } ;
struct distr_item {int /*<<< orphan*/  key; int /*<<< orphan*/  ref; int /*<<< orphan*/  lower; int /*<<< orphan*/  type; int /*<<< orphan*/  upper; } ;
typedef  int /*<<< orphan*/  net_ev_handler ;

/* Variables and functions */
 int ITEM_SIZE ; 
 scalar_t__ PUBLICATION ; 
 int /*<<< orphan*/  TIPC_CLUSTER_SCOPE ; 
 scalar_t__ WITHDRAWAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct publication*) ; 
 scalar_t__ FUNC5 (struct tipc_msg*) ; 
 int FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 scalar_t__ FUNC8 (struct tipc_msg*) ; 
 scalar_t__ node_is_down ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct publication* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_nametbl_lock ; 
 struct publication* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct publication*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void FUNC17(struct sk_buff *buf)
{
	struct publication *publ;
	struct tipc_msg *msg = FUNC1(buf);
	struct distr_item *item = (struct distr_item *)FUNC5(msg);
	u32 count = FUNC6(msg) / ITEM_SIZE;

	FUNC15(&tipc_nametbl_lock);
	while (count--) {
		if (FUNC8(msg) == PUBLICATION) {
			FUNC2("tipc_named_recv: got publication for %u, %u, %u\n",
			    FUNC9(item->type), FUNC9(item->lower),
			    FUNC9(item->upper));
			publ = FUNC10(FUNC9(item->type),
							FUNC9(item->lower),
							FUNC9(item->upper),
							TIPC_CLUSTER_SCOPE,
							FUNC7(msg),
							FUNC9(item->ref),
							FUNC9(item->key));
			if (publ) {
				FUNC12(&publ->subscr,
						       FUNC7(msg),
						       publ,
						       (net_ev_handler)node_is_down);
			}
		} else if (FUNC8(msg) == WITHDRAWAL) {
			FUNC2("tipc_named_recv: got withdrawl for %u, %u, %u\n",
			    FUNC9(item->type), FUNC9(item->lower),
			    FUNC9(item->upper));
			publ = FUNC11(FUNC9(item->type),
							FUNC9(item->lower),
							FUNC7(msg),
							FUNC9(item->ref),
							FUNC9(item->key));

			if (publ) {
				FUNC13(&publ->subscr);
				FUNC4(publ);
			} else {
				FUNC3("Unable to remove publication by node 0x%x\n"
				    "(type=%u, lower=%u, ref=%u, key=%u)\n",
				    FUNC7(msg),
				    FUNC9(item->type), FUNC9(item->lower),
				    FUNC9(item->ref), FUNC9(item->key));
			}
		} else {
			FUNC14("Unrecognized name table message received\n");
		}
		item++;
	}
	FUNC16(&tipc_nametbl_lock);
	FUNC0(buf);
}