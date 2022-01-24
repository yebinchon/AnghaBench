#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct bearer {TYPE_1__ publ; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSC_H_SIZE ; 
 int /*<<< orphan*/  LINK_CONFIG ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_net_id ; 

__attribute__((used)) static struct sk_buff *FUNC8(u32 type,
					  u32 req_links,
					  u32 dest_domain,
					  struct bearer *b_ptr)
{
	struct sk_buff *buf = FUNC0(DSC_H_SIZE);
	struct tipc_msg *msg;

	if (buf) {
		msg = FUNC1(buf);
		FUNC2(msg, LINK_CONFIG, type, DSC_H_SIZE, dest_domain);
		FUNC6(msg, 1);
		FUNC7(msg, req_links);
		FUNC4(msg, dest_domain);
		FUNC3(msg, tipc_net_id);
		FUNC5(msg, &b_ptr->publ.addr);
	}
	return buf;
}