#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_high_pc ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 
 scalar_t__ DW_FORM_CLASS_CONSTANT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(Dwarf_Die die, Dwarf_Unsigned lopc, Dwarf_Unsigned *hipc)
{
	Dwarf_Error de;
	Dwarf_Half form;
	Dwarf_Attribute at;
	int ret;

	ret = FUNC0(die, DW_AT_high_pc, &at, &de);
	if (ret == DW_DLV_ERROR) {
		FUNC4("dwarf_attr failed: %s", FUNC1(de));
		return (ret);
	}
	ret = FUNC3(at, &form, &de);
	if (ret == DW_DLV_ERROR) {
		FUNC4("dwarf_whatform failed: %s", FUNC1(de));
		return (ret);
	}
	if (FUNC2(2, 0, 0, form) == DW_FORM_CLASS_CONSTANT)
		*hipc += lopc;

	return (DW_DLV_OK);
}