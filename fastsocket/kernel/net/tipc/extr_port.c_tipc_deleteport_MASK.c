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
struct TYPE_2__ {scalar_t__ connected; } ;
struct port {int /*<<< orphan*/  timer; int /*<<< orphan*/  wait_list; int /*<<< orphan*/  port_list; struct port* user_port; int /*<<< orphan*/  subscription; TYPE_1__ publ; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TIPC_ERR_NO_PORT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (struct port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_port_list_lock ; 
 struct port* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct port*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct port*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC15(u32 ref)
{
	struct port *p_ptr;
	struct sk_buff *buf = NULL;

	FUNC14(ref, 0, NULL);
	p_ptr = FUNC10(ref);
	if (!p_ptr)
		return -EINVAL;

	FUNC12(ref);
	FUNC11(p_ptr);

	FUNC1(&p_ptr->timer);
	if (p_ptr->publ.connected) {
		buf = FUNC5(p_ptr, TIPC_ERR_NO_PORT);
		FUNC9(&p_ptr->subscription);
	}
	if (p_ptr->user_port) {
		FUNC13(p_ptr->user_port);
		FUNC3(p_ptr->user_port);
	}

	FUNC6(&tipc_port_list_lock);
	FUNC4(&p_ptr->port_list);
	FUNC4(&p_ptr->wait_list);
	FUNC7(&tipc_port_list_lock);
	FUNC2(&p_ptr->timer);
	FUNC3(p_ptr);
	FUNC0("Deleted port %u\n", ref);
	FUNC8(buf);
	return 0;
}