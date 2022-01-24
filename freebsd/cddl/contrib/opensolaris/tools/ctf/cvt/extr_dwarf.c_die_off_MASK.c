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
struct TYPE_3__ {int /*<<< orphan*/  dw_err; } ;
typedef  TYPE_1__ dwarf_t ;
typedef  int /*<<< orphan*/  Dwarf_Off ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 scalar_t__ DW_DLV_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Dwarf_Off
FUNC3(dwarf_t *dw, Dwarf_Die die)
{
	Dwarf_Off off;

	if (FUNC0(die, &off, &dw->dw_err) == DW_DLV_OK)
		return (off);

	FUNC2("failed to get offset for die: %s\n",
	    FUNC1(dw->dw_err));
	/*NOTREACHED*/
	return (0);
}