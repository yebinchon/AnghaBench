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
struct _Dwarf_LineFile {int dummy; } ;
struct TYPE_11__ {void* lf_size; void* lf_mtime; void* lf_dirndx; int /*<<< orphan*/ * lf_fname; } ;
struct TYPE_10__ {void* li_lflen; int /*<<< orphan*/  li_lflist; } ;
struct TYPE_9__ {TYPE_2__* dbgp_lineinfo; } ;
typedef  void* Dwarf_Unsigned ;
typedef  TYPE_1__* Dwarf_P_Debug ;
typedef  TYPE_2__* Dwarf_LineInfo ;
typedef  TYPE_3__* Dwarf_LineFile ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,void*) ; 
 void* DW_DLE_ARGUMENT ; 
 void* DW_DLE_MEMORY ; 
 void* DW_DLV_NOCOUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  lf_next ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 

Dwarf_Unsigned
FUNC6(Dwarf_P_Debug dbg, char *name, Dwarf_Unsigned dirndx,
    Dwarf_Unsigned mtime, Dwarf_Unsigned size, Dwarf_Error *error)
{
	Dwarf_LineInfo li;
	Dwarf_LineFile lf;

	if (dbg == NULL || name == NULL || FUNC5(name) == 0) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_NOCOUNT);
	}

	li = dbg->dbgp_lineinfo;

	if ((lf = FUNC3(sizeof(struct _Dwarf_LineFile))) == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	if ((lf->lf_fname = FUNC4(name)) == NULL) {
		FUNC2(lf);
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}
	lf->lf_dirndx = dirndx;
	lf->lf_mtime = mtime;
	lf->lf_size = size;
	FUNC1(&li->li_lflist, lf, lf_next);

	return (++li->li_lflen);
}