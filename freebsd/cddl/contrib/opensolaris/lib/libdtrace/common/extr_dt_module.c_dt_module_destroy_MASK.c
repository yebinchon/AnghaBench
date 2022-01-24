#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
struct TYPE_9__ {size_t dt_modbuckets; scalar_t__ dt_nmods; int /*<<< orphan*/  dt_modlist; TYPE_2__** dt_mods; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_10__ {struct TYPE_10__* dm_next; int /*<<< orphan*/  dm_name; } ;
typedef  TYPE_2__ dt_module_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(dtrace_hdl_t *dtp, dt_module_t *dmp)
{
	uint_t h = FUNC3(dmp->dm_name, NULL) % dtp->dt_modbuckets;
	dt_module_t **dmpp = &dtp->dt_mods[h];

	FUNC1(&dtp->dt_modlist, dmp);
	FUNC0(dtp->dt_nmods != 0);
	dtp->dt_nmods--;

	/*
	 * Now remove this module from its hash chain.  We expect to always
	 * find the module on its hash chain, so in this loop we assert that
	 * we don't run off the end of the list.
	 */
	while (*dmpp != dmp) {
		dmpp = &((*dmpp)->dm_next);
		FUNC0(*dmpp != NULL);
	}

	*dmpp = dmp->dm_next;

	FUNC2(dtp, dmp);
	FUNC4(dmp);
}