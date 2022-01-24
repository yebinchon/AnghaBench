#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_13__ {int ab_length; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* read ) (int /*<<< orphan*/ ,scalar_t__*,int) ;} ;
struct TYPE_11__ {scalar_t__ ds_size; int /*<<< orphan*/  ds_data; } ;
typedef  scalar_t__ Dwarf_Unsigned ;
typedef  TYPE_1__ Dwarf_Section ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_2__* Dwarf_Debug ;
typedef  int /*<<< orphan*/  Dwarf_CU ;
typedef  TYPE_3__* Dwarf_Abbrev ;

/* Variables and functions */
 int DW_DLE_NONE ; 
 int DW_DLE_NO_ENTRY ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,TYPE_3__**,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int) ; 

int
FUNC6(Dwarf_Debug dbg, Dwarf_CU cu, Dwarf_Unsigned *offset,
    Dwarf_Abbrev *abp, Dwarf_Error *error)
{
	Dwarf_Section *ds;
	uint64_t attr;
	uint64_t entry;
	uint64_t form;
	uint64_t aboff;
	uint64_t adoff;
	uint64_t tag;
	uint8_t children;
	int ret;

	FUNC4(abp != NULL);

	ds = FUNC2(dbg, ".debug_abbrev");
	if (ds == NULL || *offset >= ds->ds_size)
		return (DW_DLE_NO_ENTRY);

	aboff = *offset;

	entry = FUNC3(ds->ds_data, offset);
	if (entry == 0) {
		/* Last entry. */
		ret = FUNC0(cu, entry, 0, 0, aboff, abp,
		    error);
		if (ret == DW_DLE_NONE) {
			(*abp)->ab_length = 1;
			return (ret);
		} else
			return (ret);
	}
	tag = FUNC3(ds->ds_data, offset);
	children = dbg->read(ds->ds_data, offset, 1);
	if ((ret = FUNC0(cu, entry, tag, children, aboff,
	    abp, error)) != DW_DLE_NONE)
		return (ret);

	/* Parse attribute definitions. */
	do {
		adoff = *offset;
		attr = FUNC3(ds->ds_data, offset);
		form = FUNC3(ds->ds_data, offset);
		if (attr != 0)
			if ((ret = FUNC1(dbg, *abp, attr,
			    form, adoff, NULL, error)) != DW_DLE_NONE)
				return (ret);
	} while (attr != 0);

	(*abp)->ab_length = *offset - aboff;

	return (ret);
}