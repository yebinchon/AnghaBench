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
struct publication {scalar_t__ scope; int /*<<< orphan*/  pport_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  local_publ_count; } ;

/* Variables and functions */
 scalar_t__ TIPC_NODE_SCOPE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct publication*) ; 
 scalar_t__ FUNC3 (struct publication*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ table ; 
 int /*<<< orphan*/  FUNC5 (struct publication*) ; 
 int /*<<< orphan*/  tipc_nametbl_lock ; 
 struct publication* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(u32 type, u32 lower, u32 ref, u32 key)
{
	struct publication *publ;

	FUNC0("tipc_nametbl_withdraw: {%u,%u}, key=%u\n", type, lower, key);
	FUNC7(&tipc_nametbl_lock);
	publ = FUNC6(type, lower, tipc_own_addr, ref, key);
	if (FUNC3(publ)) {
		table.local_publ_count--;
		if (publ->scope != TIPC_NODE_SCOPE)
			FUNC5(publ);
		FUNC8(&tipc_nametbl_lock);
		FUNC4(&publ->pport_list);
		FUNC2(publ);
		return 1;
	}
	FUNC8(&tipc_nametbl_lock);
	FUNC1("Unable to remove local publication\n"
	    "(type=%u, lower=%u, ref=%u, key=%u)\n",
	    type, lower, ref, key);
	return 0;
}