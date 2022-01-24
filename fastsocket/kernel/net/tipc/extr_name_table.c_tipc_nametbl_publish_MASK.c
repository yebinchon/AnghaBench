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
struct publication {int dummy; } ;
struct TYPE_2__ {scalar_t__ local_publ_count; } ;

/* Variables and functions */
 scalar_t__ TIPC_NODE_SCOPE ; 
 scalar_t__ TIPC_RESERVED_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rsv_publ_ok ; 
 TYPE_1__ table ; 
 scalar_t__ tipc_max_publications ; 
 int /*<<< orphan*/  FUNC1 (struct publication*) ; 
 struct publication* FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  tipc_nametbl_lock ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct publication *FUNC6(u32 type, u32 lower, u32 upper,
				    u32 scope, u32 port_ref, u32 key)
{
	struct publication *publ;

	if (table.local_publ_count >= tipc_max_publications) {
		FUNC3("Publication failed, local publication limit reached (%u)\n",
		     tipc_max_publications);
		return NULL;
	}
	if ((type < TIPC_RESERVED_TYPES) && !FUNC0(&rsv_publ_ok)) {
		FUNC3("Publication failed, reserved name {%u,%u,%u}\n",
		     type, lower, upper);
		return NULL;
	}

	FUNC4(&tipc_nametbl_lock);
	table.local_publ_count++;
	publ = FUNC2(type, lower, upper, scope,
				   tipc_own_addr, port_ref, key);
	if (publ && (scope != TIPC_NODE_SCOPE)) {
		FUNC1(publ);
	}
	FUNC5(&tipc_nametbl_lock);
	return publ;
}