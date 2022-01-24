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
struct TYPE_2__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  connected; int /*<<< orphan*/  phdr; } ;
struct port {TYPE_1__ publ; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_CONN_MSG ; 
 scalar_t__ TIPC_CRITICAL_IMPORTANCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 
 int /*<<< orphan*/  FUNC3 (struct port*) ; 
 int /*<<< orphan*/  FUNC4 (struct port*) ; 
 int /*<<< orphan*/  tipc_own_addr ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct port *p_ptr, u32 err)
{
	u32 imp = FUNC0(&p_ptr->publ.phdr);

	if (!p_ptr->publ.connected)
		return NULL;
	if (imp < TIPC_CRITICAL_IMPORTANCE)
		imp++;
	return FUNC1(FUNC4(p_ptr),
				    FUNC3(p_ptr),
				    p_ptr->publ.ref,
				    tipc_own_addr,
				    imp,
				    TIPC_CONN_MSG,
				    err,
				    FUNC2(p_ptr),
				    0);
}