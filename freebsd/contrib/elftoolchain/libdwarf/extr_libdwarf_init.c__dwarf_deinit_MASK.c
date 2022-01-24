#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dbg_mode; } ;
typedef  TYPE_1__* Dwarf_Debug ;

/* Variables and functions */
 scalar_t__ DW_DLC_READ ; 
 scalar_t__ DW_DLC_WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(Dwarf_Debug dbg)
{

	FUNC2(dbg != NULL);

	if (dbg->dbg_mode == DW_DLC_READ)
		FUNC0(dbg);
	else if (dbg->dbg_mode == DW_DLC_WRITE)
		FUNC1(dbg);
}