#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * fde_dbg; } ;
typedef  int Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Signed ;
typedef  TYPE_1__* Dwarf_P_Fde ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/ * Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int DW_CFA_offset ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int DW_DLE_NONE ; 
 TYPE_1__* DW_DLV_BADADDR ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

Dwarf_P_Fde
FUNC2(Dwarf_P_Fde fde, Dwarf_Unsigned reg, Dwarf_Signed offset,
    Dwarf_Error *error)
{
	int ret;
	Dwarf_Debug dbg;

	dbg = fde != NULL ? fde->fde_dbg : NULL;

	if (fde == NULL || reg > 0x3f) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_BADADDR);
	}

	ret = FUNC1(fde, DW_CFA_offset | (reg & 0x3f),
	    offset, 0, error);

	if (ret != DW_DLE_NONE)
		return (DW_DLV_BADADDR);

	return (fde);
}