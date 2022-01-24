#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dbg_seccnt; TYPE_1__* dbg_section; } ;
struct TYPE_4__ {char* ds_name; scalar_t__ ds_size; } ;
typedef  scalar_t__ Dwarf_Unsigned ;
typedef  TYPE_2__* Dwarf_Debug ;

/* Variables and functions */
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

int
FUNC2(Dwarf_Debug dbg, Dwarf_Unsigned *debug_info,
    Dwarf_Unsigned *debug_abbrev, Dwarf_Unsigned *debug_line,
    Dwarf_Unsigned *debug_loc, Dwarf_Unsigned *debug_aranges,
    Dwarf_Unsigned *debug_macinfo, Dwarf_Unsigned *debug_pubnames,
    Dwarf_Unsigned *debug_str, Dwarf_Unsigned *debug_frame,
    Dwarf_Unsigned *debug_ranges, Dwarf_Unsigned *debug_pubtypes,
    Dwarf_Unsigned *debug_types)
{
	const char *n;
	Dwarf_Unsigned sz;
	int i;

	if (dbg == NULL)
		return (DW_DLV_ERROR);

	FUNC0(debug_info, 0);
	FUNC0(debug_abbrev, 0);
	FUNC0(debug_line, 0);
	FUNC0(debug_loc, 0);
	FUNC0(debug_aranges, 0);
	FUNC0(debug_macinfo, 0);
	FUNC0(debug_pubnames, 0);
	FUNC0(debug_str, 0);
	FUNC0(debug_frame, 0);
	FUNC0(debug_ranges, 0);
	FUNC0(debug_pubtypes, 0);
	FUNC0(debug_types, 0);

	for (i = 0; (Dwarf_Unsigned) i < dbg->dbg_seccnt; i++) {
		n = dbg->dbg_section[i].ds_name;
		sz = dbg->dbg_section[i].ds_size;
		if (!FUNC1(n, ".debug_info"))
			FUNC0(debug_info, sz);
		else if (!FUNC1(n, ".debug_abbrev"))
			FUNC0(debug_abbrev, sz);
		else if (!FUNC1(n, ".debug_line"))
			FUNC0(debug_line, sz);
		else if (!FUNC1(n, ".debug_loc"))
			FUNC0(debug_loc, sz);
		else if (!FUNC1(n, ".debug_aranges"))
			FUNC0(debug_aranges, sz);
		else if (!FUNC1(n, ".debug_macinfo"))
			FUNC0(debug_macinfo, sz);
		else if (!FUNC1(n, ".debug_pubnames"))
			FUNC0(debug_pubnames, sz);
		else if (!FUNC1(n, ".debug_str"))
			FUNC0(debug_str, sz);
		else if (!FUNC1(n, ".debug_frame"))
			FUNC0(debug_frame, sz);
		else if (!FUNC1(n, ".debug_ranges"))
			FUNC0(debug_ranges, sz);
		else if (!FUNC1(n, ".debug_pubtypes"))
			FUNC0(debug_pubtypes, sz);
		else if (!FUNC1(n, ".debug_types"))
			FUNC0(debug_types, sz);
	}

	return (DW_DLV_OK);
}