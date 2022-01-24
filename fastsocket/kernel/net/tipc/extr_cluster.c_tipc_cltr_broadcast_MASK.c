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
struct tipc_node {int /*<<< orphan*/  addr; } ;
struct sk_buff {int dummy; } ;
struct cluster {int highest_node; int highest_slave; struct tipc_node** nodes; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int LOWEST_SLAVE ; 
 scalar_t__ TIPC_NET_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct cluster* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ tipc_mode ; 
 scalar_t__ FUNC8 (struct tipc_node*) ; 
 int /*<<< orphan*/  tipc_own_addr ; 

void FUNC9(struct sk_buff *buf)
{
	struct sk_buff *buf_copy;
	struct cluster *c_ptr;
	struct tipc_node *n_ptr;
	u32 n_num;
	u32 tstart;
	u32 tstop;
	u32 node_type;

	if (tipc_mode == TIPC_NET_MODE) {
		c_ptr = FUNC6(tipc_own_addr);
		FUNC0(FUNC3(c_ptr->addr));	/* For now */

		/* Send to standard nodes, then repeat loop sending to slaves */
		tstart = 1;
		tstop = c_ptr->highest_node;
		for (node_type = 1; node_type <= 2; node_type++) {
			for (n_num = tstart; n_num <= tstop; n_num++) {
				n_ptr = c_ptr->nodes[n_num];
				if (n_ptr && FUNC8(n_ptr)) {
					buf_copy = FUNC5(buf, GFP_ATOMIC);
					if (buf_copy == NULL)
						goto exit;
					FUNC4(FUNC2(buf_copy),
							 n_ptr->addr);
					FUNC7(buf_copy, n_ptr->addr,
						       n_ptr->addr);
				}
			}
			tstart = LOWEST_SLAVE;
			tstop = c_ptr->highest_slave;
		}
	}
exit:
	FUNC1(buf);
}