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
struct _Dwarf_Attribute {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  die_dbg; } ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_1__* Dwarf_Die ;
typedef  int /*<<< orphan*/ * Dwarf_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 

int
FUNC3(Dwarf_Die die, Dwarf_Attribute *atp, Dwarf_Error *error)
{
	Dwarf_Attribute at;

	FUNC1(die != NULL);
	FUNC1(atp != NULL);

	if ((at = FUNC2(1, sizeof(struct _Dwarf_Attribute))) == NULL) {
		FUNC0(die->die_dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	*atp = at;

	return (DW_DLE_NONE);
}