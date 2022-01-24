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
struct cluster {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROUTE_REMOVAL ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cluster*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(struct cluster *c_ptr, u32 dest,
				u32 lower, u32 upper)
{
	struct sk_buff *buf = FUNC4(0, c_ptr->addr);
	struct tipc_msg *msg;

	if (buf) {
		msg = FUNC0(buf);
		FUNC1(msg, dest);
		FUNC2(msg, ROUTE_REMOVAL);
		FUNC3(c_ptr, buf, lower, upper);
	} else {
		FUNC5("Memory squeeze: broadcast of lost route failed\n");
	}
}