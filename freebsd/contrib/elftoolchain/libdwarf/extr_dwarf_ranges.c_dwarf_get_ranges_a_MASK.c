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
struct TYPE_3__ {int /*<<< orphan*/  die_cu; } ;
typedef  int /*<<< orphan*/  Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Signed ;
typedef  int /*<<< orphan*/  Dwarf_Ranges ;
typedef  int /*<<< orphan*/  Dwarf_Off ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_1__* Dwarf_Die ;
typedef  int /*<<< orphan*/ * Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int DW_DLV_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC2(Dwarf_Debug dbg, Dwarf_Off offset, Dwarf_Die die,
    Dwarf_Ranges **ranges, Dwarf_Signed *ret_cnt, Dwarf_Unsigned *ret_byte_cnt,
    Dwarf_Error *error)
{

	if (dbg == NULL || die == NULL || ranges == NULL || ret_cnt == NULL) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_ERROR);
	}

	return (FUNC1(dbg, die->die_cu, offset, ranges, ret_cnt,
	    ret_byte_cnt, error));
}