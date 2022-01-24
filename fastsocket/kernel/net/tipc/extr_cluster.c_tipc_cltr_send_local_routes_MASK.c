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
typedef  size_t u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cluster {size_t highest_node; scalar_t__* nodes; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCAL_ROUTING_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,size_t,size_t) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void FUNC12(struct cluster *c_ptr, u32 dest)
{
	struct sk_buff *buf;
	struct tipc_msg *msg;
	u32 highest = c_ptr->highest_node;
	u32 n_num;
	int send = 0;

	FUNC0(FUNC4(dest));
	FUNC0(FUNC3(c_ptr->addr));
	buf = FUNC8(highest, c_ptr->addr);
	if (buf) {
		msg = FUNC2(buf);
		FUNC6(msg, c_ptr->addr);
		FUNC7(msg, LOCAL_ROUTING_TABLE);
		for (n_num = 1; n_num <= highest; n_num++) {
			if (c_ptr->nodes[n_num] &&
			    FUNC10(c_ptr->nodes[n_num])) {
				send = 1;
				FUNC5(msg, n_num);
			}
		}
		if (send)
			FUNC9(buf, dest, dest);
		else
			FUNC1(buf);
	} else {
		FUNC11("Memory squeeze: broadcast of local route failed\n");
	}
}