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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
#define  CONN_MANAGER 130 
#define  NAME_DISTRIBUTOR 129 
#define  ROUTE_DISTRIBUTOR 128 
 int /*<<< orphan*/  TIPC_ERR_NO_NAME ; 
 int /*<<< orphan*/  TIPC_ERR_NO_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*) ; 
 scalar_t__ FUNC5 (struct tipc_msg*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 scalar_t__ FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*) ; 
 scalar_t__ FUNC10 (struct tipc_msg*) ; 
 int FUNC11 (struct tipc_msg*) ; 
 scalar_t__ FUNC12 (struct tipc_msg*) ; 
 int FUNC13 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC22(struct sk_buff *buf)
{
	struct tipc_msg *msg;
	u32 dnode;

	if (!buf)
		return;
	msg = FUNC1(buf);

	FUNC7(msg);
	if (FUNC11(msg) > 6) {
		if (FUNC6(msg)) {
			FUNC3(msg, "NET>DISC>:");
			FUNC0(buf);
		} else {
			FUNC3(msg, "NET>REJ>:");
			FUNC21(buf, FUNC5(msg) ?
					TIPC_ERR_NO_PORT : TIPC_ERR_NO_NAME);
		}
		return;
	}

	FUNC3(msg, "tipc_net->rout: ");

	/* Handle message for this node */
	dnode = FUNC12(msg) ? tipc_own_addr : FUNC4(msg);
	if (FUNC2(dnode, tipc_own_addr)) {
		if (FUNC8(msg)) {
			if (FUNC10(msg))
				FUNC18(buf, NULL);
			else if (FUNC5(msg))
				FUNC19(buf);
			else
				FUNC14(buf);
			return;
		}
		switch (FUNC13(msg)) {
		case ROUTE_DISTRIBUTOR:
			FUNC15(buf);
			break;
		case NAME_DISTRIBUTOR:
			FUNC17(buf);
			break;
		case CONN_MANAGER:
			FUNC20(buf);
			break;
		default:
			FUNC3(msg,"DROP/NET/<REC<");
			FUNC0(buf);
		}
		return;
	}

	/* Handle message for another node */
	FUNC3(msg, "NET>SEND>: ");
	FUNC16(buf, dnode, FUNC9(msg));
}