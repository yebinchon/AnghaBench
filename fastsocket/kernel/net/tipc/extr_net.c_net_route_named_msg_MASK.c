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
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_ERR_NO_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct sk_buff *buf)
{
	struct tipc_msg *msg = FUNC2(buf);
	u32 dnode;
	u32 dport;

	if (!FUNC6(msg)) {
		FUNC4(msg, "tipc_net->drop_nam:");
		FUNC1(buf);
		return;
	}

	dnode = FUNC0(FUNC5(msg));
	dport = FUNC11(FUNC8(msg), FUNC7(msg), &dnode);
	FUNC3("tipc_net->lookup<%u,%u>-><%u,%x>\n",
	    FUNC8(msg), FUNC7(msg), dport, dnode);
	if (dport) {
		FUNC9(msg, dnode);
		FUNC10(msg, dport);
		FUNC12(buf);
		return;
	}
	FUNC4(msg, "tipc_net->rej:NO NAME: ");
	FUNC13(buf, TIPC_ERR_NO_NAME);
}