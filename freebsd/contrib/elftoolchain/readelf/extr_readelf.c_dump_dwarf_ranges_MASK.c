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
struct readelf {scalar_t__ ec; int /*<<< orphan*/  dbg; } ;
typedef  scalar_t__ Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Signed ;
typedef  int /*<<< orphan*/  Dwarf_Ranges ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/ * Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_low_pc ; 
 int DW_DLV_OK ; 
 scalar_t__ DW_TAG_compile_unit ; 
 scalar_t__ ELFCLASS32 ; 
 int /*<<< orphan*/  FUNC0 (struct readelf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct readelf *re)
{
	Dwarf_Ranges *ranges;
	Dwarf_Die die;
	Dwarf_Signed cnt;
	Dwarf_Unsigned bytecnt;
	Dwarf_Half tag;
	Dwarf_Error de;
	Dwarf_Unsigned lowpc;
	int ret;

	if (FUNC3(re->dbg, 0, &ranges, &cnt, &bytecnt, &de) !=
	    DW_DLV_OK)
		return;

	FUNC7("Contents of the .debug_ranges section:\n\n");
	if (re->ec == ELFCLASS32)
		FUNC7("    %-8s %-8s %s\n", "Offset", "Begin", "End");
	else
		FUNC7("    %-8s %-16s %s\n", "Offset", "Begin", "End");

	while ((ret = FUNC4(re->dbg, NULL, NULL, NULL, NULL,
	    NULL, &de)) == DW_DLV_OK) {
		die = NULL;
		if (FUNC5(re->dbg, die, &die, &de) != DW_DLV_OK)
			continue;
		if (FUNC6(die, &tag, &de) != DW_DLV_OK) {
			FUNC9("dwarf_tag failed: %s", FUNC2(de));
			continue;
		}
		/* XXX: What about DW_TAG_partial_unit? */
		lowpc = 0;
		if (tag == DW_TAG_compile_unit) {
			if (FUNC1(die, DW_AT_low_pc, &lowpc,
			    &de) != DW_DLV_OK)
				lowpc = 0;
		}

		FUNC0(re, die, (Dwarf_Addr) lowpc);
	}
	FUNC8('\n');
}