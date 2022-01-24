#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  dw_regnum; } ;
struct TYPE_11__ {int /*<<< orphan*/  dbg_frame_undefined_value; } ;
struct TYPE_10__ {int rt3_reg_table_size; TYPE_3__* rt3_rules; TYPE_3__ rt3_cfa_rule; } ;
typedef  int /*<<< orphan*/  Dwarf_Regtable_Entry3 ;
typedef  TYPE_1__ Dwarf_Regtable3 ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_2__* Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_3__*,int) ; 

int
FUNC5(Dwarf_Debug dbg, Dwarf_Regtable3 **dest,
    Dwarf_Regtable3 *src, Dwarf_Error *error)
{
	int i;

	FUNC1(dest != NULL);
	FUNC1(src != NULL);

	if (*dest == NULL) {
		if ((*dest = FUNC3(sizeof(Dwarf_Regtable3))) == NULL) {
			FUNC0(dbg, error, DW_DLE_MEMORY);
			return (DW_DLE_MEMORY);
		}
		(*dest)->rt3_reg_table_size = src->rt3_reg_table_size;
		(*dest)->rt3_rules = FUNC3(src->rt3_reg_table_size *
		    sizeof(Dwarf_Regtable_Entry3));
		if ((*dest)->rt3_rules == NULL) {
			FUNC2(*dest);
			FUNC0(dbg, error, DW_DLE_MEMORY);
			return (DW_DLE_MEMORY);
		}
	}

	FUNC4(&(*dest)->rt3_cfa_rule, &src->rt3_cfa_rule,
	    sizeof(Dwarf_Regtable_Entry3));

	for (i = 0; i < (*dest)->rt3_reg_table_size &&
	     i < src->rt3_reg_table_size; i++)
		FUNC4(&(*dest)->rt3_rules[i], &src->rt3_rules[i],
		    sizeof(Dwarf_Regtable_Entry3));

	for (; i < (*dest)->rt3_reg_table_size; i++)
		(*dest)->rt3_rules[i].dw_regnum =
		    dbg->dbg_frame_undefined_value;

	return (DW_DLE_NONE);
}