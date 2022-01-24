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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn_unacked; scalar_t__ connected; } ;
struct port {TYPE_1__ publ; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_ACK ; 
 int /*<<< orphan*/  CONN_MANAGER ; 
 int /*<<< orphan*/  TIPC_OK ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 
 int /*<<< orphan*/  FUNC3 (struct port*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 struct port* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct port*) ; 

void FUNC7(u32 ref, u32 ack)
{
	struct port *p_ptr;
	struct sk_buff *buf = NULL;

	p_ptr = FUNC5(ref);
	if (!p_ptr)
		return;
	if (p_ptr->publ.connected) {
		p_ptr->publ.conn_unacked -= ack;
		buf = FUNC0(FUNC3(p_ptr),
					   FUNC2(p_ptr),
					   ref,
					   tipc_own_addr,
					   CONN_MANAGER,
					   CONN_ACK,
					   TIPC_OK,
					   FUNC1(p_ptr),
					   ack);
	}
	FUNC6(p_ptr);
	FUNC4(buf);
}