#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct _Dwarf_P_Section {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  dbgp_seccnt; int /*<<< orphan*/  dbgp_seclist; } ;
struct TYPE_10__ {struct TYPE_10__* ds_name; scalar_t__ ds_cap; int /*<<< orphan*/ * ds_data; } ;
typedef  TYPE_1__* Dwarf_P_Section ;
typedef  TYPE_2__* Dwarf_P_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ _SECTION_INIT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  ds_next ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (size_t) ; 
 TYPE_1__* FUNC6 (char const*) ; 

int
FUNC7(Dwarf_P_Debug dbg, Dwarf_P_Section *dsp, const char *name,
    int pseudo, Dwarf_Error *error)
{
	Dwarf_P_Section ds;

	FUNC2(dbg != NULL && dsp != NULL && name != NULL);

	if ((ds = FUNC3(1, sizeof(struct _Dwarf_P_Section))) == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	if ((ds->ds_name = FUNC6(name)) == NULL) {
		FUNC4(ds);
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	if (!pseudo) {
		ds->ds_cap = _SECTION_INIT_SIZE;
		if ((ds->ds_data = FUNC5((size_t) ds->ds_cap)) == NULL) {
			FUNC4(ds->ds_name);
			FUNC4(ds);
			FUNC0(dbg, error, DW_DLE_MEMORY);
			return (DW_DLE_MEMORY);
		}
		FUNC1(&dbg->dbgp_seclist, ds, ds_next);
		dbg->dbgp_seccnt++;
	}

	*dsp = ds;

	return (DW_DLE_NONE);
}