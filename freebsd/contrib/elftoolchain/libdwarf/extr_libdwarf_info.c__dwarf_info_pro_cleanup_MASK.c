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
struct TYPE_3__ {scalar_t__ dbg_mode; int /*<<< orphan*/  dbg_cu; } ;
typedef  TYPE_1__* Dwarf_P_Debug ;
typedef  int /*<<< orphan*/ * Dwarf_CU ;

/* Variables and functions */
 scalar_t__ DW_DLC_WRITE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _Dwarf_CU ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  cu_next ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(Dwarf_P_Debug dbg)
{
	Dwarf_CU cu;

	FUNC3(dbg != NULL && dbg->dbg_mode == DW_DLC_WRITE);

	cu = FUNC0(&dbg->dbg_cu);
	if (cu != NULL) {
		FUNC1(&dbg->dbg_cu, cu, _Dwarf_CU, cu_next);
		FUNC2(cu);
		FUNC4(cu);
	}
}