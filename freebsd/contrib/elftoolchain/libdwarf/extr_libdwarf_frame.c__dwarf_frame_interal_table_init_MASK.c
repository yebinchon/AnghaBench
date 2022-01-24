#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int dbg_frame_rule_table_size; TYPE_1__* dbg_internal_reg_table; } ;
struct TYPE_6__ {int rt3_reg_table_size; int /*<<< orphan*/ * rt3_rules; } ;
typedef  int /*<<< orphan*/  Dwarf_Regtable_Entry3 ;
typedef  TYPE_1__ Dwarf_Regtable3 ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_2__* Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(Dwarf_Debug dbg, Dwarf_Error *error)
{
	Dwarf_Regtable3 *rt;

	if (dbg->dbg_internal_reg_table != NULL)
		return (DW_DLE_NONE);

	/* Initialise internal register table. */
	if ((rt = FUNC1(1, sizeof(Dwarf_Regtable3))) == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	rt->rt3_reg_table_size = dbg->dbg_frame_rule_table_size;
	if ((rt->rt3_rules = FUNC1(rt->rt3_reg_table_size,
	    sizeof(Dwarf_Regtable_Entry3))) == NULL) {
		FUNC2(rt);
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	dbg->dbg_internal_reg_table = rt;

	return (DW_DLE_NONE);
}