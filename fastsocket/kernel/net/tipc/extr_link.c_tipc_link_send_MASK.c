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
struct tipc_node {struct link** active_links; } ;
struct sk_buff {int dummy; } ;
struct link {int dummy; } ;

/* Variables and functions */
 int ELINKCONG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct link*,struct sk_buff*) ; 
 int /*<<< orphan*/  tipc_net_lock ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_node*) ; 
 struct tipc_node* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_node*) ; 

int FUNC10(struct sk_buff *buf, u32 dest, u32 selector)
{
	struct link *l_ptr;
	struct tipc_node *n_ptr;
	int res = -ELINKCONG;

	FUNC4(&tipc_net_lock);
	n_ptr = FUNC8(dest, selector);
	if (n_ptr) {
		FUNC7(n_ptr);
		l_ptr = n_ptr->active_links[selector & 1];
		if (l_ptr) {
			FUNC2("tipc_link_send: found link %x for dest %x\n", l_ptr, dest);
			res = FUNC6(l_ptr, buf);
		} else {
			FUNC2("Attempt to send msg to unreachable node:\n");
			FUNC3(FUNC1(buf),">>>");
			FUNC0(buf);
		}
		FUNC9(n_ptr);
	} else {
		FUNC2("Attempt to send msg to unknown node:\n");
		FUNC3(FUNC1(buf),">>>");
		FUNC0(buf);
	}
	FUNC5(&tipc_net_lock);
	return res;
}