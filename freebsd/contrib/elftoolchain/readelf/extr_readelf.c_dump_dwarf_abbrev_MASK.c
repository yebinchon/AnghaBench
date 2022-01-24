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
typedef  int /*<<< orphan*/  unk_tag ;
typedef  int /*<<< orphan*/  unk_form ;
typedef  int /*<<< orphan*/  unk_attr ;
struct readelf {int /*<<< orphan*/  dbg; } ;
typedef  int Dwarf_Unsigned ;
typedef  scalar_t__ Dwarf_Signed ;
typedef  int Dwarf_Off ;
typedef  int Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Abbrev ;

/* Variables and functions */
 int /*<<< orphan*/  DW_DLA_ABBREV ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char const**) ; 
 int FUNC3 (scalar_t__,char const**) ; 
 int FUNC4 (int,char const**) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int*,scalar_t__*,int*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct readelf *re)
{
	Dwarf_Abbrev ab;
	Dwarf_Off aboff, atoff;
	Dwarf_Unsigned length, attr_count;
	Dwarf_Signed flag, form;
	Dwarf_Half tag, attr;
	Dwarf_Error de;
	const char *tag_str, *attr_str, *form_str;
	char unk_tag[32], unk_attr[32], unk_form[32];
	int i, j, ret;

	FUNC10("\nContents of section .debug_abbrev:\n\n");

	while ((ret = FUNC9(re->dbg, NULL, NULL, &aboff,
	    NULL, NULL, &de)) ==  DW_DLV_OK) {
		FUNC10("  Number TAG\n");
		i = 0;
		while ((ret = FUNC5(re->dbg, aboff, &ab, &length,
		    &attr_count, &de)) == DW_DLV_OK) {
			if (length == 1) {
				FUNC0(re->dbg, ab, DW_DLA_ABBREV);
				break;
			}
			aboff += length;
			FUNC10("%4d", ++i);
			if (FUNC8(ab, &tag, &de) != DW_DLV_OK) {
				FUNC12("dwarf_get_abbrev_tag failed: %s",
				    FUNC1(de));
				goto next_abbrev;
			}
			if (FUNC4(tag, &tag_str) != DW_DLV_OK) {
				FUNC11(unk_tag, sizeof(unk_tag),
				    "[Unknown Tag: %#x]", tag);
				tag_str = unk_tag;
			}
			if (FUNC6(ab, &flag, &de) !=
			    DW_DLV_OK) {
				FUNC12("dwarf_get_abbrev_children_flag failed:"
				    " %s", FUNC1(de));
				goto next_abbrev;
			}
			FUNC10("      %s    %s\n", tag_str,
			    flag ? "[has children]" : "[no children]");
			for (j = 0; (Dwarf_Unsigned) j < attr_count; j++) {
				if (FUNC7(ab, (Dwarf_Signed) j,
				    &attr, &form, &atoff, &de) != DW_DLV_OK) {
					FUNC12("dwarf_get_abbrev_entry failed:"
					    " %s", FUNC1(de));
					continue;
				}
				if (FUNC2(attr, &attr_str) !=
				    DW_DLV_OK) {
					FUNC11(unk_attr, sizeof(unk_attr),
					    "[Unknown AT: %#x]", attr);
					attr_str = unk_attr;
				}
				if (FUNC3(form, &form_str) !=
				    DW_DLV_OK) {
					FUNC11(unk_form, sizeof(unk_form),
					    "[Unknown Form: %#x]",
					    (Dwarf_Half) form);
					form_str = unk_form;
				}
				FUNC10("    %-18s %s\n", attr_str, form_str);
			}
		next_abbrev:
			FUNC0(re->dbg, ab, DW_DLA_ABBREV);
		}
		if (ret != DW_DLV_OK)
			FUNC12("dwarf_get_abbrev: %s", FUNC1(de));
	}
	if (ret == DW_DLV_ERROR)
		FUNC12("dwarf_next_cu_header: %s", FUNC1(de));
}