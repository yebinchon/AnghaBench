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
struct sub_seq {struct publication* zone_list; int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; } ;
struct publication {scalar_t__ node; int ref; scalar_t__ scope; struct publication* zone_list_next; int /*<<< orphan*/  key; } ;
struct print_buf {int dummy; } ;

/* Variables and functions */
 scalar_t__ TIPC_CLUSTER_SCOPE ; 
 scalar_t__ TIPC_NODE_SCOPE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int,int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ tipc_own_addr ; 
 int /*<<< orphan*/  FUNC3 (struct print_buf*,char*,...) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct sub_seq *sseq, struct print_buf *buf, u32 depth,
			u32 index)
{
	char portIdStr[27];
	char *scopeStr;
	struct publication *publ = sseq->zone_list;

	FUNC3(buf, "%-10u %-10u ", sseq->lower, sseq->upper);

	if (depth == 2 || !publ) {
		FUNC3(buf, "\n");
		return;
	}

	do {
		FUNC0 (portIdStr, "<%u.%u.%u:%u>",
			 FUNC4(publ->node), FUNC1(publ->node),
			 FUNC2(publ->node), publ->ref);
		FUNC3(buf, "%-26s ", portIdStr);
		if (depth > 3) {
			if (publ->node != tipc_own_addr)
				scopeStr = "";
			else if (publ->scope == TIPC_NODE_SCOPE)
				scopeStr = "node";
			else if (publ->scope == TIPC_CLUSTER_SCOPE)
				scopeStr = "cluster";
			else
				scopeStr = "zone";
			FUNC3(buf, "%-10u %s", publ->key, scopeStr);
		}

		publ = publ->zone_list_next;
		if (publ == sseq->zone_list)
			break;

		FUNC3(buf, "\n%33s", " ");
	} while (1);

	FUNC3(buf, "\n");
}