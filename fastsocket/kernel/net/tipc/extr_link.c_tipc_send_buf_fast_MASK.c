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
struct tipc_node {struct tipc_node** active_links; } ;
struct sk_buff {int dummy; } ;
struct link {struct link** active_links; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_ERR_NO_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct sk_buff*,struct tipc_node*,size_t) ; 
 scalar_t__ FUNC2 (struct tipc_node*) ; 
 int FUNC3 (struct tipc_node*,struct sk_buff*,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_net_lock ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_node*) ; 
 struct tipc_node* FUNC9 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_node*) ; 
 size_t tipc_own_addr ; 
 int FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC13(struct sk_buff *buf, u32 destnode)
{
	struct link *l_ptr;
	struct tipc_node *n_ptr;
	int res;
	u32 selector = FUNC5(FUNC0(buf)) & 1;
	u32 dummy;

	if (destnode == tipc_own_addr)
		return FUNC11(buf);

	FUNC6(&tipc_net_lock);
	n_ptr = FUNC9(destnode, selector);
	if (FUNC2(n_ptr)) {
		FUNC8(n_ptr);
		l_ptr = n_ptr->active_links[selector];
		FUNC1("send_fast: buf %x selected %x, destnode = %x\n",
		    buf, l_ptr, destnode);
		if (FUNC2(l_ptr)) {
			res = FUNC3(l_ptr, buf, &dummy);
			FUNC10(n_ptr);
			FUNC7(&tipc_net_lock);
			return res;
		}
		FUNC10(n_ptr);
	}
	FUNC7(&tipc_net_lock);
	res = FUNC4(FUNC0(buf));
	FUNC12(buf, TIPC_ERR_NO_NODE);
	return res;
}