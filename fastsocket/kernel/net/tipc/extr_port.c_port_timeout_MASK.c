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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  connected; } ;
struct port {scalar_t__ probing_state; int /*<<< orphan*/  probing_interval; int /*<<< orphan*/  timer; TYPE_1__ publ; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_MANAGER ; 
 int /*<<< orphan*/  CONN_PROBE ; 
 scalar_t__ PROBING ; 
 int /*<<< orphan*/  TIPC_ERR_NO_PORT ; 
 int /*<<< orphan*/  TIPC_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct port*) ; 
 int /*<<< orphan*/  FUNC4 (struct port*) ; 
 int /*<<< orphan*/  FUNC5 (struct port*) ; 
 int /*<<< orphan*/  FUNC6 (struct port*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 struct port* FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct port*) ; 

__attribute__((used)) static void FUNC10(unsigned long ref)
{
	struct port *p_ptr = FUNC8(ref);
	struct sk_buff *buf = NULL;

	if (!p_ptr)
		return;

	if (!p_ptr->publ.connected) {
		FUNC9(p_ptr);
		return;
	}

	/* Last probe answered ? */
	if (p_ptr->probing_state == PROBING) {
		buf = FUNC2(p_ptr, TIPC_ERR_NO_PORT);
	} else {
		buf = FUNC1(FUNC6(p_ptr),
					   FUNC5(p_ptr),
					   p_ptr->publ.ref,
					   tipc_own_addr,
					   CONN_MANAGER,
					   CONN_PROBE,
					   TIPC_OK,
					   FUNC4(p_ptr),
					   0);
		FUNC3(p_ptr);
		p_ptr->probing_state = PROBING;
		FUNC0(&p_ptr->timer, p_ptr->probing_interval);
	}
	FUNC9(p_ptr);
	FUNC7(buf);
}