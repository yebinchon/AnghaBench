#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int /*<<< orphan*/  dbg_cu; } ;
struct TYPE_11__ {scalar_t__ ld_hipc; scalar_t__ ld_lopc; } ;
struct TYPE_10__ {scalar_t__ ds_data; } ;
typedef  int Dwarf_Unsigned ;
typedef  int Dwarf_Signed ;
typedef  TYPE_1__ Dwarf_Section ;
typedef  int /*<<< orphan*/ * Dwarf_Ptr ;
typedef  TYPE_2__ Dwarf_Locdesc ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_3__* Dwarf_Debug ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_ARGUMENT ; 
 int DW_DLE_NONE ; 
 int DW_DLE_NO_ENTRY ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_NO_ENTRY ; 
 int DW_DLV_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_3__*,char*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int,TYPE_2__***,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(Dwarf_Debug dbg, Dwarf_Unsigned offset,
    Dwarf_Addr *hipc, Dwarf_Addr *lopc, Dwarf_Ptr *data,
    Dwarf_Unsigned *entry_len, Dwarf_Unsigned *next_entry,
    Dwarf_Error *error)
{
	Dwarf_Locdesc *ld, **llbuf;
	Dwarf_Section *ds;
	Dwarf_Signed listlen;
	int i, ret;

	/*
	 * Note that this API sometimes will not work correctly because
	 * it assumes that all units have the same pointer size and offset
	 * size.
	 */

	if (dbg == NULL || hipc == NULL || lopc == NULL || data == NULL ||
	    entry_len == NULL || next_entry == NULL) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_ERROR);
	}

	ret = FUNC3(dbg, FUNC1(&dbg->dbg_cu), offset,
	    &llbuf, &listlen, entry_len, error);
	if (ret == DW_DLE_NO_ENTRY) {
		FUNC0(dbg, error, DW_DLV_NO_ENTRY);
		return (DW_DLV_NO_ENTRY);
	} else if (ret != DW_DLE_NONE)
		return (DW_DLV_ERROR);

	*hipc = *lopc = 0;
	for (i = 0; i < listlen; i++) {
		ld = llbuf[i];
		if (i == 0) {
			*hipc = ld->ld_hipc;
			*lopc = ld->ld_lopc;
		} else {
			if (ld->ld_lopc < *lopc)
				*lopc = ld->ld_lopc;
			if (ld->ld_hipc > *hipc)
				*hipc = ld->ld_hipc;
		}
	}

	ds = FUNC2(dbg, ".debug_loc");
	FUNC4(ds != NULL);
	*data = (uint8_t *) ds->ds_data + offset;
	*next_entry = offset + *entry_len;

	return (DW_DLV_OK);
}