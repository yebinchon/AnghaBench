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
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cluster {int highest_node; int addr; scalar_t__* nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT_ROUTING_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int,int) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void FUNC12(struct cluster *c_ptr, u32 dest)
{
	struct sk_buff *buf;
	struct tipc_msg *msg;
	u32 highest = c_ptr->highest_node;
	u32 n_num;
	int send = 0;

	if (FUNC3(c_ptr->addr))
		return;
	FUNC0(!FUNC4(dest));
	FUNC0(FUNC3(dest));
	highest = c_ptr->highest_node;
	buf = FUNC8(highest + 1, c_ptr->addr);
	if (buf) {
		msg = FUNC2(buf);
		FUNC6(msg, c_ptr->addr);
		FUNC7(msg, EXT_ROUTING_TABLE);
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
		FUNC11("Memory squeeze: broadcast of external route failed\n");
	}
}