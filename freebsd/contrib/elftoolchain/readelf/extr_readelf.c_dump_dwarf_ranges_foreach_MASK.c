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
typedef  int /*<<< orphan*/  uintmax_t ;
struct readelf {scalar_t__ ec; int /*<<< orphan*/  dbg; } ;
struct TYPE_3__ {scalar_t__ dwr_type; scalar_t__ dwr_addr2; scalar_t__ dwr_addr1; } ;
typedef  scalar_t__ Dwarf_Unsigned ;
typedef  int Dwarf_Signed ;
typedef  TYPE_1__ Dwarf_Ranges ;
typedef  int /*<<< orphan*/  Dwarf_Off ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 scalar_t__ DW_AT_ranges ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 
 scalar_t__ DW_RANGES_ADDRESS_SELECTION ; 
 scalar_t__ DW_RANGES_END ; 
 scalar_t__ ELFCLASS32 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,int*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct readelf *re, Dwarf_Die die, Dwarf_Addr base)
{
	Dwarf_Attribute *attr_list;
	Dwarf_Ranges *ranges;
	Dwarf_Die ret_die;
	Dwarf_Error de;
	Dwarf_Addr base0;
	Dwarf_Half attr;
	Dwarf_Signed attr_count, cnt;
	Dwarf_Unsigned off, bytecnt;
	int i, j, ret;

	if ((ret = FUNC0(die, &attr_list, &attr_count, &de)) !=
	    DW_DLV_OK) {
		if (ret == DW_DLV_ERROR)
			FUNC8("dwarf_attrlist failed: %s", FUNC2(de));
		goto cont_search;
	}

	for (i = 0; i < attr_count; i++) {
		if (FUNC6(attr_list[i], &attr, &de) != DW_DLV_OK) {
			FUNC8("dwarf_whatattr failed: %s", FUNC2(de));
			continue;
		}
		if (attr != DW_AT_ranges)
			continue;
		if (FUNC3(attr_list[i], &off, &de) != DW_DLV_OK) {
			FUNC8("dwarf_formudata failed: %s", FUNC2(de));
			continue;
		}
		if (FUNC4(re->dbg, (Dwarf_Off) off, &ranges, &cnt,
		    &bytecnt, &de) != DW_DLV_OK)
			continue;
		base0 = base;
		for (j = 0; j < cnt; j++) {
			FUNC7("    %08jx ", (uintmax_t) off);
			if (ranges[j].dwr_type == DW_RANGES_END) {
				FUNC7("%s\n", "<End of list>");
				continue;
			} else if (ranges[j].dwr_type ==
			    DW_RANGES_ADDRESS_SELECTION) {
				base0 = ranges[j].dwr_addr2;
				continue;
			}
			if (re->ec == ELFCLASS32)
				FUNC7("%08jx %08jx\n",
				    (uintmax_t) (ranges[j].dwr_addr1 + base0),
				    (uintmax_t) (ranges[j].dwr_addr2 + base0));
			else
				FUNC7("%016jx %016jx\n",
				    (uintmax_t) (ranges[j].dwr_addr1 + base0),
				    (uintmax_t) (ranges[j].dwr_addr2 + base0));
		}
	}

cont_search:
	/* Search children. */
	ret = FUNC1(die, &ret_die, &de);
	if (ret == DW_DLV_ERROR)
		FUNC8("dwarf_child: %s", FUNC2(de));
	else if (ret == DW_DLV_OK)
		FUNC9(re, ret_die, base);

	/* Search sibling. */
	ret = FUNC5(re->dbg, die, &ret_die, &de);
	if (ret == DW_DLV_ERROR)
		FUNC8("dwarf_siblingof: %s", FUNC2(de));
	else if (ret == DW_DLV_OK)
		FUNC9(re, ret_die, base);
}