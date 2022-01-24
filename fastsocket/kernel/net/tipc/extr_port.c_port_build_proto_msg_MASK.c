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
 int /*<<< orphan*/  LONG_H_SIZE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC10(u32 destport, u32 destnode,
					    u32 origport, u32 orignode,
					    u32 usr, u32 type, u32 err,
					    u32 seqno, u32 ack)
{
	struct sk_buff *buf;
	struct tipc_msg *msg;

	buf = FUNC0(LONG_H_SIZE);
	if (buf) {
		msg = FUNC1(buf);
		FUNC3(msg, usr, type, LONG_H_SIZE, destnode);
		FUNC5(msg, err);
		FUNC4(msg, destport);
		FUNC8(msg, origport);
		FUNC7(msg, orignode);
		FUNC9(msg, seqno);
		FUNC6(msg, ack);
		FUNC2(msg, "PORT>SEND>:");
	}
	return buf;
}