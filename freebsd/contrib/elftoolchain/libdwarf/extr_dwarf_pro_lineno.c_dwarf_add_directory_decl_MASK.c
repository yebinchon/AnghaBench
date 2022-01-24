#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int li_inclen; int /*<<< orphan*/ ** li_incdirs; } ;
struct TYPE_5__ {TYPE_2__* dbgp_lineinfo; } ;
typedef  size_t Dwarf_Unsigned ;
typedef  TYPE_1__* Dwarf_P_Debug ;
typedef  TYPE_2__* Dwarf_LineInfo ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int /*<<< orphan*/  DW_DLE_MEMORY ; 
 size_t DW_DLV_NOCOUNT ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 

Dwarf_Unsigned
FUNC4(Dwarf_P_Debug dbg, char *name, Dwarf_Error *error)
{
	Dwarf_LineInfo li;

	if (dbg == NULL || name == NULL || FUNC3(name) == 0) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_NOCOUNT);
	}

	li = dbg->dbgp_lineinfo;

	li->li_incdirs = FUNC1(li->li_incdirs, (li->li_inclen + 1) *
	    sizeof(char *));
	if (li->li_incdirs == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLV_NOCOUNT);
	}
	if ((li->li_incdirs[li->li_inclen] = FUNC2(name)) == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLV_NOCOUNT);
	}

	return (++li->li_inclen);
}