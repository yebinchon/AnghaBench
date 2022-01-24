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
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct port_list {int count; int /*<<< orphan*/ * ports; struct port_list* next; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PLSIZE ; 
 int /*<<< orphan*/  TIPC_CLUSTER_SCOPE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct port_list*) ; 
 int /*<<< orphan*/  FUNC9 (struct port_list*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void FUNC12(struct sk_buff *buf, struct port_list *dp)
{
	struct tipc_msg* msg;
	struct port_list dports = {0, NULL, };
	struct port_list *item = dp;
	int cnt = 0;

	msg = FUNC1(buf);

	/* Create destination port list, if one wasn't supplied */

	if (dp == NULL) {
		FUNC8(FUNC4(msg),
				     FUNC3(msg),
				     FUNC5(msg),
				     TIPC_CLUSTER_SCOPE,
				     &dports);
		item = dp = &dports;
	}

	/* Deliver a copy of message to each destination port */

	if (dp->count != 0) {
		if (dp->count == 1) {
			FUNC6(msg, dp->ports[0]);
			FUNC10(buf);
			FUNC9(dp);
			return;
		}
		for (; cnt < dp->count; cnt++) {
			int index = cnt % PLSIZE;
			struct sk_buff *b = FUNC7(buf, GFP_ATOMIC);

			if (b == NULL) {
				FUNC11("Unable to deliver multicast message(s)\n");
				FUNC2(msg, "LOST:");
				goto exit;
			}
			if ((index == 0) && (cnt != 0)) {
				item = item->next;
			}
			FUNC6(FUNC1(b),item->ports[index]);
			FUNC10(b);
		}
	}
exit:
	FUNC0(buf);
	FUNC9(dp);
}