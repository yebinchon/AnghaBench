#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* u; } ;
struct TYPE_13__ {TYPE_2__* cu_lineinfo; } ;
struct TYPE_12__ {TYPE_4__* die_cu; int /*<<< orphan*/ * die_dbg; } ;
struct TYPE_11__ {int /*<<< orphan*/ ** li_lnarray; int /*<<< orphan*/  li_lnlist; scalar_t__ li_lnlen; } ;
struct TYPE_10__ {int /*<<< orphan*/  u64; } ;
typedef  int Dwarf_Signed ;
typedef  TYPE_2__* Dwarf_LineInfo ;
typedef  int /*<<< orphan*/ * Dwarf_Line ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_3__* Dwarf_Die ;
typedef  int /*<<< orphan*/ * Dwarf_Debug ;
typedef  TYPE_4__* Dwarf_CU ;
typedef  TYPE_5__* Dwarf_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_AT_stmt_list ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int /*<<< orphan*/  DW_DLE_MEMORY ; 
 scalar_t__ DW_DLE_NONE ; 
 int /*<<< orphan*/  DW_DLE_NO_ENTRY ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_NO_ENTRY ; 
 int DW_DLV_OK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ln_next ; 
 int /*<<< orphan*/ ** FUNC5 (int) ; 

int
FUNC6(Dwarf_Die die, Dwarf_Line **linebuf, Dwarf_Signed *linecount,
    Dwarf_Error *error)
{
	Dwarf_LineInfo li;
	Dwarf_Debug dbg;
	Dwarf_Line ln;
	Dwarf_CU cu;
	Dwarf_Attribute at; 
	int i;

	dbg = die != NULL ? die->die_dbg : NULL;

	if (die == NULL || linebuf == NULL || linecount == NULL) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_ERROR);
	}

	if ((at = FUNC3(die, DW_AT_stmt_list)) == NULL) {
		FUNC0(dbg, error, DW_DLE_NO_ENTRY);
		return (DW_DLV_NO_ENTRY);
	}

	cu = die->die_cu;
	if (cu->cu_lineinfo == NULL) {
		if (FUNC4(die, at->u[0].u64, error) !=
		    DW_DLE_NONE)
			return (DW_DLV_ERROR);
	}
	if (cu->cu_lineinfo == NULL) {
		FUNC0(dbg, error, DW_DLE_NO_ENTRY);
		return (DW_DLV_NO_ENTRY);
	}

	li = cu->cu_lineinfo;
	*linecount = (Dwarf_Signed) li->li_lnlen;

	if (*linecount == 0) {
		FUNC0(dbg, error, DW_DLE_NO_ENTRY);
		return (DW_DLV_NO_ENTRY);
	}

	if (li->li_lnarray != NULL) {
		*linebuf = li->li_lnarray;
		return (DW_DLV_OK);
	}

	if ((li->li_lnarray = FUNC5(*linecount * sizeof(Dwarf_Line))) ==
	    NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLV_ERROR);
	}

	for (i = 0, ln = FUNC1(&li->li_lnlist);
	     i < *linecount && ln != NULL; i++, ln = FUNC2(ln, ln_next))
		li->li_lnarray[i] = ln;

	*linebuf = li->li_lnarray;

	return (DW_DLV_OK);
}