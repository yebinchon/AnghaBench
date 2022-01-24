#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct _Dwarf_P_Expr {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  dbgp_pelist; } ;
struct TYPE_9__ {TYPE_2__* pe_dbg; int /*<<< orphan*/  pe_eelist; } ;
typedef  TYPE_1__* Dwarf_P_Expr ;
typedef  TYPE_2__* Dwarf_P_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int /*<<< orphan*/  DW_DLE_MEMORY ; 
 TYPE_1__* DW_DLV_BADADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  pe_next ; 

Dwarf_P_Expr
FUNC4(Dwarf_P_Debug dbg, Dwarf_Error *error)
{
	Dwarf_P_Expr pe;

	if (dbg == NULL) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_BADADDR);
	}

	if ((pe = FUNC3(1, sizeof(struct _Dwarf_P_Expr))) == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLV_BADADDR);
	}
	FUNC1(&pe->pe_eelist);

	FUNC2(&dbg->dbgp_pelist, pe, pe_next);
	pe->pe_dbg = dbg;

	return (pe);
}