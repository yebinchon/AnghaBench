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
 scalar_t__ LONG_H_SIZE ; 
 int /*<<< orphan*/  NAME_DISTRIBUTOR ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC4(u32 type, u32 size, u32 dest)
{
	struct sk_buff *buf = FUNC0(LONG_H_SIZE + size);
	struct tipc_msg *msg;

	if (buf != NULL) {
		msg = FUNC1(buf);
		FUNC2(msg, NAME_DISTRIBUTOR, type, LONG_H_SIZE, dest);
		FUNC3(msg, LONG_H_SIZE + size);
	}
	return buf;
}