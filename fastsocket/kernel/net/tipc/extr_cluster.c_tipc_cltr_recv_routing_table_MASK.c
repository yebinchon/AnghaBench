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
typedef  int /*<<< orphan*/  unchar ;
typedef  size_t u32 ;
struct tipc_node {int dummy; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct cluster {struct tipc_node** nodes; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
#define  EXT_ROUTING_TABLE 132 
#define  LOCAL_ROUTING_TABLE 131 
 size_t LOWEST_SLAVE ; 
#define  ROUTE_ADDITION 130 
#define  ROUTE_REMOVAL 129 
#define  SLAVE_ROUTING_TABLE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (size_t) ; 
 int FUNC5 (struct tipc_msg*) ; 
 size_t FUNC6 (struct tipc_msg*) ; 
 size_t FUNC7 (struct tipc_msg*) ; 
 int FUNC8 (struct tipc_msg*) ; 
 int FUNC9 (struct tipc_msg*) ; 
 size_t FUNC10 (size_t,size_t,size_t) ; 
 struct cluster* FUNC11 (size_t) ; 
 struct cluster* FUNC12 (size_t) ; 
 size_t FUNC13 (size_t) ; 
 size_t FUNC14 (size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_node*,size_t) ; 
 struct tipc_node* FUNC16 (size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct tipc_node*,size_t) ; 
 size_t tipc_own_addr ; 
 size_t FUNC18 (size_t) ; 

void FUNC19(struct sk_buff *buf)
{
	struct tipc_msg *msg = FUNC2(buf);
	struct cluster *c_ptr;
	struct tipc_node *n_ptr;
	unchar *node_table;
	u32 table_size;
	u32 router;
	u32 rem_node = FUNC7(msg);
	u32 z_num;
	u32 c_num;
	u32 n_num;

	c_ptr = FUNC12(rem_node);
	if (!c_ptr) {
		c_ptr = FUNC11(rem_node);
		if (!c_ptr) {
			FUNC1(buf);
			return;
		}
	}

	node_table = buf->data + FUNC5(msg);
	table_size = FUNC8(msg) - FUNC5(msg);
	router = FUNC6(msg);
	z_num = FUNC18(rem_node);
	c_num = FUNC13(rem_node);

	switch (FUNC9(msg)) {
	case LOCAL_ROUTING_TABLE:
		FUNC0(FUNC4(tipc_own_addr));
	case EXT_ROUTING_TABLE:
		for (n_num = 1; n_num < table_size; n_num++) {
			if (node_table[n_num]) {
				u32 addr = FUNC10(z_num, c_num, n_num);
				n_ptr = c_ptr->nodes[n_num];
				if (!n_ptr) {
					n_ptr = FUNC16(addr);
				}
				if (n_ptr)
					FUNC15(n_ptr, router);
			}
		}
		break;
	case SLAVE_ROUTING_TABLE:
		FUNC0(!FUNC4(tipc_own_addr));
		FUNC0(FUNC3(c_ptr->addr));
		for (n_num = 1; n_num < table_size; n_num++) {
			if (node_table[n_num]) {
				u32 slave_num = n_num + LOWEST_SLAVE;
				u32 addr = FUNC10(z_num, c_num, slave_num);
				n_ptr = c_ptr->nodes[slave_num];
				if (!n_ptr) {
					n_ptr = FUNC16(addr);
				}
				if (n_ptr)
					FUNC15(n_ptr, router);
			}
		}
		break;
	case ROUTE_ADDITION:
		if (!FUNC4(tipc_own_addr)) {
			FUNC0(!FUNC3(c_ptr->addr)
			       || FUNC4(rem_node));
		} else {
			FUNC0(FUNC3(c_ptr->addr)
			       && !FUNC4(rem_node));
		}
		n_ptr = c_ptr->nodes[FUNC14(rem_node)];
		if (!n_ptr)
			n_ptr = FUNC16(rem_node);
		if (n_ptr)
			FUNC15(n_ptr, router);
		break;
	case ROUTE_REMOVAL:
		if (!FUNC4(tipc_own_addr)) {
			FUNC0(!FUNC3(c_ptr->addr)
			       || FUNC4(rem_node));
		} else {
			FUNC0(FUNC3(c_ptr->addr)
			       && !FUNC4(rem_node));
		}
		n_ptr = c_ptr->nodes[FUNC14(rem_node)];
		if (n_ptr)
			FUNC17(n_ptr, router);
		break;
	default:
		FUNC0(!"Illegal routing manager message received\n");
	}
	FUNC1(buf);
}