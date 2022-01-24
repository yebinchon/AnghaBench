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
typedef  scalar_t__ u32 ;
struct tipc_portid {int /*<<< orphan*/  node; int /*<<< orphan*/  ref; } ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {int connected; int /*<<< orphan*/  max_pkt; int /*<<< orphan*/  ref; struct tipc_msg phdr; scalar_t__ published; } ;
struct port {TYPE_1__ publ; int /*<<< orphan*/  subscription; int /*<<< orphan*/  probing_interval; int /*<<< orphan*/  timer; int /*<<< orphan*/  probing_state; } ;
typedef  int /*<<< orphan*/  net_ev_handler ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIRMED ; 
 int EINVAL ; 
 int /*<<< orphan*/  LONG_H_SIZE ; 
 int /*<<< orphan*/  PROBING_INTERVAL ; 
 int /*<<< orphan*/  SHORT_H_SIZE ; 
 int /*<<< orphan*/  TIPC_CONN_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 scalar_t__ port_handle_node_down ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 struct port* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct port*) ; 

int FUNC13(u32 ref, struct tipc_portid const *peer)
{
	struct port *p_ptr;
	struct tipc_msg *msg;
	int res = -EINVAL;

	p_ptr = FUNC11(ref);
	if (!p_ptr)
		return -EINVAL;
	if (p_ptr->publ.published || p_ptr->publ.connected)
		goto exit;
	if (!peer->ref)
		goto exit;

	msg = &p_ptr->publ.phdr;
	FUNC2(msg, peer->node);
	FUNC3(msg, peer->ref);
	FUNC5(msg, tipc_own_addr);
	FUNC6(msg, p_ptr->publ.ref);
	FUNC7(msg, 42);
	FUNC8(msg, TIPC_CONN_MSG);
	if (!FUNC1(peer->node))
		FUNC4(msg, SHORT_H_SIZE);
	else
		FUNC4(msg, LONG_H_SIZE);

	p_ptr->probing_interval = PROBING_INTERVAL;
	p_ptr->probing_state = CONFIRMED;
	p_ptr->publ.connected = 1;
	FUNC0(&p_ptr->timer, p_ptr->probing_interval);

	FUNC10(&p_ptr->subscription,peer->node,
			  (void *)(unsigned long)ref,
			  (net_ev_handler)port_handle_node_down);
	res = 0;
exit:
	FUNC12(p_ptr);
	p_ptr->publ.max_pkt = FUNC9(peer->node, ref);
	return res;
}