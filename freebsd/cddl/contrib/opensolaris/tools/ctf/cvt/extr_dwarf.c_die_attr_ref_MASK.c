#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dw_err; } ;
typedef  TYPE_1__ dwarf_t ;
typedef  int /*<<< orphan*/  Dwarf_Off ;
typedef  int /*<<< orphan*/  Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 scalar_t__ DW_DLV_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Dwarf_Off
FUNC4(dwarf_t *dw, Dwarf_Die die, Dwarf_Half name)
{
	Dwarf_Off off;

	if (FUNC1(die, name, &off, &dw->dw_err) != DW_DLV_OK) {
		FUNC3("die %llu: failed to get ref: %s\n",
		    FUNC0(dw, die), FUNC2(dw->dw_err));
	}

	return (off);
}