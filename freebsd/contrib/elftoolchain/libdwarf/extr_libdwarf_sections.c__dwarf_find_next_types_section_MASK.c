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
struct TYPE_5__ {int /*<<< orphan*/ * ds_name; } ;
typedef  TYPE_1__ Dwarf_Section ;
typedef  int /*<<< orphan*/ * Dwarf_Debug ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

Dwarf_Section *
FUNC3(Dwarf_Debug dbg, Dwarf_Section *ds)
{

	FUNC1(dbg != NULL);

	if (ds == NULL)
		return (FUNC0(dbg, ".debug_types"));

	FUNC1(ds->ds_name != NULL);

	do {
		ds++;
		if (ds->ds_name != NULL &&
		    !FUNC2(ds->ds_name, ".debug_types"))
			return (ds);
	} while (ds->ds_name != NULL);

	return (NULL);
}