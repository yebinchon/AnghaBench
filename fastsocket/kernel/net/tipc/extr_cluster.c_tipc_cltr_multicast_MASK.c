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
struct cluster {int highest_slave; int highest_node; struct tipc_node** nodes; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int LOWEST_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int tipc_highest_allowed_slave ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tipc_max_nodes ; 
 scalar_t__ FUNC8 (struct tipc_node*) ; 

__attribute__((used)) static void FUNC9(struct cluster *c_ptr, struct sk_buff *buf,
			 u32 lower, u32 upper)
{
	struct sk_buff *buf_copy;
	struct tipc_node *n_ptr;
	u32 n_num;
	u32 tstop;

	FUNC0(lower <= upper);
	FUNC0(((lower >= 1) && (lower <= tipc_max_nodes)) ||
	       ((lower >= LOWEST_SLAVE) && (lower <= tipc_highest_allowed_slave)));
	FUNC0(((upper >= 1) && (upper <= tipc_max_nodes)) ||
	       ((upper >= LOWEST_SLAVE) && (upper <= tipc_highest_allowed_slave)));
	FUNC0(FUNC3(c_ptr->addr));

	tstop = FUNC4(upper) ? c_ptr->highest_slave : c_ptr->highest_node;
	if (tstop > upper)
		tstop = upper;
	for (n_num = lower; n_num <= tstop; n_num++) {
		n_ptr = c_ptr->nodes[n_num];
		if (n_ptr && FUNC8(n_ptr)) {
			buf_copy = FUNC6(buf, GFP_ATOMIC);
			if (buf_copy == NULL)
				break;
			FUNC5(FUNC2(buf_copy), n_ptr->addr);
			FUNC7(buf_copy, n_ptr->addr, n_ptr->addr);
		}
	}
	FUNC1(buf);
}