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
typedef  size_t u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ table ; 
 int /*<<< orphan*/  tipc_nametbl_lock ; 
 size_t tipc_nametbl_size ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	u32 i;

	if (!table.types)
		return;

	/* Verify name table is empty, then release it */

	FUNC3(&tipc_nametbl_lock);
	for (i = 0; i < tipc_nametbl_size; i++) {
		if (!FUNC1(&table.types[i]))
			FUNC0("tipc_nametbl_stop(): hash chain %u is non-null\n", i);
	}
	FUNC2(table.types);
	table.types = NULL;
	FUNC4(&tipc_nametbl_lock);
}