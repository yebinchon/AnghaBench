#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct _Dwarf_Line {int dummy; } ;
struct TYPE_11__ {scalar_t__ ln_addr; int ln_endseq; TYPE_2__* ln_li; } ;
struct TYPE_10__ {int /*<<< orphan*/  li_lnlen; int /*<<< orphan*/  li_lnlist; } ;
struct TYPE_9__ {TYPE_2__* dbgp_lineinfo; } ;
typedef  int /*<<< orphan*/  Dwarf_Unsigned ;
typedef  TYPE_1__* Dwarf_P_Debug ;
typedef  TYPE_2__* Dwarf_LineInfo ;
typedef  TYPE_3__* Dwarf_Line ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int /*<<< orphan*/  DW_DLE_MEMORY ; 
 int /*<<< orphan*/  DW_DLV_NOCOUNT ; 
 int /*<<< orphan*/  DW_DLV_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _Dwarf_Line ; 
 TYPE_3__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  ln_next ; 

Dwarf_Unsigned
FUNC4(Dwarf_P_Debug dbg, Dwarf_Addr addr, Dwarf_Error *error)
{
	Dwarf_LineInfo li;
	Dwarf_Line ln;

	if (dbg == NULL) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_NOCOUNT);
	}

	li = dbg->dbgp_lineinfo;

	ln = FUNC2(&li->li_lnlist, _Dwarf_Line, ln_next);
	if (ln && ln->ln_addr >= addr) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_NOCOUNT);
	}

	if ((ln = FUNC3(1, sizeof(struct _Dwarf_Line))) == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLV_NOCOUNT);
	}
	ln->ln_li = li;
	ln->ln_addr = addr;
	ln->ln_endseq = 1;
	FUNC1(&li->li_lnlist, ln, ln_next);
	li->li_lnlen++;

	return (DW_DLV_OK);
}