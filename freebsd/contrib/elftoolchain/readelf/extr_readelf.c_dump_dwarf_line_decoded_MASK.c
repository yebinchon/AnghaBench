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
typedef  char* uintmax_t ;
struct readelf {int /*<<< orphan*/  dbg; } ;
typedef  int Dwarf_Unsigned ;
typedef  int Dwarf_Signed ;
typedef  int /*<<< orphan*/  Dwarf_Line ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_comp_dir ; 
 int /*<<< orphan*/  DW_AT_name ; 
 int DW_DLV_OK ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,char***,int*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 

__attribute__((used)) static void
FUNC11(struct readelf *re)
{
	Dwarf_Die die;
	Dwarf_Line *linebuf, ln;
	Dwarf_Addr lineaddr;
	Dwarf_Signed linecount, srccount;
	Dwarf_Unsigned lineno, fn;
	Dwarf_Error de;
	const char *dir, *file;
	char **srcfiles;
	int i, ret;

	FUNC9("Decoded dump of debug contents of section .debug_line:\n\n");
	while ((ret = FUNC5(re->dbg, NULL, NULL, NULL, NULL,
	    NULL, &de)) == DW_DLV_OK) {
		if (FUNC6(re->dbg, NULL, &die, &de) != DW_DLV_OK)
			continue;
		if (FUNC1(die, DW_AT_name, &file, &de) !=
		    DW_DLV_OK)
			file = NULL;
		if (FUNC1(die, DW_AT_comp_dir, &dir, &de) !=
		    DW_DLV_OK)
			dir = NULL;
		FUNC9("CU: ");
		if (dir && file && file[0] != '/')
			FUNC9("%s/", dir);
		if (file)
			FUNC9("%s", file);
		FUNC10('\n');
		FUNC9("%-37s %11s   %s\n", "Filename", "Line Number",
		    "Starting Address");
		if (FUNC8(die, &linebuf, &linecount, &de) != DW_DLV_OK)
			continue;
		if (FUNC7(die, &srcfiles, &srccount, &de) != DW_DLV_OK)
			continue;
		for (i = 0; i < linecount; i++) {
			ln = linebuf[i];
			if (FUNC2(ln, &fn, &de) != DW_DLV_OK)
				continue;
			if (FUNC4(ln, &lineno, &de) != DW_DLV_OK)
				continue;
			if (FUNC3(ln, &lineaddr, &de) != DW_DLV_OK)
				continue;
			FUNC9("%-37s %11ju %#18jx\n",
			    FUNC0(srcfiles[fn - 1]), (uintmax_t) lineno,
			    (uintmax_t) lineaddr);
		}
		FUNC10('\n');
	}
}