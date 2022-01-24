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
struct TYPE_4__ {int /*<<< orphan*/  dw_err; int /*<<< orphan*/  dw_dw; } ;
typedef  TYPE_1__ dwarf_t ;
typedef  int /*<<< orphan*/ * Dwarf_Die ;

/* Variables and functions */
 int DW_DLV_NO_ENTRY ; 
 int DW_DLV_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Dwarf_Die
FUNC4(dwarf_t *dw, Dwarf_Die die)
{
	Dwarf_Die sib;
	int rc;

	if ((rc = FUNC2(dw->dw_dw, die, &sib, &dw->dw_err)) ==
	    DW_DLV_OK)
		return (sib);
	else if (rc == DW_DLV_NO_ENTRY)
		return (NULL);

	FUNC3("die %llu: failed to find type sibling: %s\n",
	    FUNC0(dw, die), FUNC1(dw->dw_err));
	/*NOTREACHED*/
	return (NULL);
}