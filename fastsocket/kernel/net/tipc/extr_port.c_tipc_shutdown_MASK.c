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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  phdr; scalar_t__ connected; } ;
struct port {TYPE_1__ publ; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TIPC_CONN_MSG ; 
 int /*<<< orphan*/  TIPC_CONN_SHUTDOWN ; 
 scalar_t__ TIPC_CRITICAL_IMPORTANCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 
 int /*<<< orphan*/  FUNC3 (struct port*) ; 
 int /*<<< orphan*/  FUNC4 (struct port*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 struct port* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct port*) ; 

int FUNC9(u32 ref)
{
	struct port *p_ptr;
	struct sk_buff *buf = NULL;

	p_ptr = FUNC7(ref);
	if (!p_ptr)
		return -EINVAL;

	if (p_ptr->publ.connected) {
		u32 imp = FUNC0(&p_ptr->publ.phdr);
		if (imp < TIPC_CRITICAL_IMPORTANCE)
			imp++;
		buf = FUNC1(FUNC4(p_ptr),
					   FUNC3(p_ptr),
					   ref,
					   tipc_own_addr,
					   imp,
					   TIPC_CONN_MSG,
					   TIPC_CONN_SHUTDOWN,
					   FUNC2(p_ptr),
					   0);
	}
	FUNC8(p_ptr);
	FUNC6(buf);
	return FUNC5(ref);
}