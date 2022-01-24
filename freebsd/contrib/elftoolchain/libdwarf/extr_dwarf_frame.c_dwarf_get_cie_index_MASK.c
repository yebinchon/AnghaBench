#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cie_index; } ;
typedef  int /*<<< orphan*/  Dwarf_Signed ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_1__* Dwarf_Cie ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 

int
FUNC1(Dwarf_Cie cie, Dwarf_Signed *cie_index, Dwarf_Error *error)
{

	if (cie == NULL || cie_index == NULL) {
		FUNC0(NULL, error, DW_DLE_ARGUMENT);
		return (DW_DLV_ERROR);
	}

	*cie_index = cie->cie_index;

	return (DW_DLV_OK);
}