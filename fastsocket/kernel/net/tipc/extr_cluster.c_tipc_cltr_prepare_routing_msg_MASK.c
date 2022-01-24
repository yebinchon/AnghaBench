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
 scalar_t__ INT_H_SIZE ; 
 int /*<<< orphan*/  ROUTE_DISTRIBUTOR ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC4(u32 data_size, u32 dest)
{
	u32 size = INT_H_SIZE + data_size;
	struct sk_buff *buf = FUNC0(size);
	struct tipc_msg *msg;

	if (buf) {
		msg = FUNC1(buf);
		FUNC2((char *)msg, 0, size);
		FUNC3(msg, ROUTE_DISTRIBUTOR, 0, INT_H_SIZE, dest);
	}
	return buf;
}