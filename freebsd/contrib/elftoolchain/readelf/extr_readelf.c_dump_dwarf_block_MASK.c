#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct readelf {int /*<<< orphan*/  dbg; int /*<<< orphan*/  cu_ver; int /*<<< orphan*/  cu_osize; int /*<<< orphan*/  cu_psize; } ;
struct TYPE_5__ {int ld_cents; struct TYPE_5__* ld_s; } ;
typedef  int /*<<< orphan*/  Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Signed ;
typedef  TYPE_1__ Dwarf_Locdesc ;
typedef  int Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int /*<<< orphan*/  DW_DLA_LOCDESC ; 
 int /*<<< orphan*/  DW_DLA_LOC_BLOCK ; 
 scalar_t__ DW_DLV_OK ; 
 int /*<<< orphan*/  FUNC0 (struct readelf*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct readelf *re, uint8_t *b, Dwarf_Unsigned len)
{
	Dwarf_Locdesc *llbuf;
	Dwarf_Signed lcnt;
	Dwarf_Error de;
	int i;

	if (FUNC3(re->dbg, b, len, re->cu_psize,
	    re->cu_osize, re->cu_ver, &llbuf, &lcnt, &de) != DW_DLV_OK) {
		FUNC5("dwarf_loclist_form_expr_b: %s", FUNC2(de));
		return;
	}

	for (i = 0; (Dwarf_Half) i < llbuf->ld_cents; i++) {
		FUNC0(re, &llbuf->ld_s[i]);
		if (i < llbuf->ld_cents - 1)
			FUNC4("; ");
	}

	FUNC1(re->dbg, llbuf->ld_s, DW_DLA_LOC_BLOCK);
	FUNC1(re->dbg, llbuf, DW_DLA_LOCDESC);
}