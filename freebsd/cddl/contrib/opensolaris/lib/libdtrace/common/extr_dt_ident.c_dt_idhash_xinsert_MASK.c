#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ulong_t ;
struct TYPE_8__ {size_t dh_hashsz; int /*<<< orphan*/  (* dh_defer ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  dh_nelems; TYPE_2__** dh_hash; int /*<<< orphan*/ * dh_tmpl; } ;
typedef  TYPE_1__ dt_idhash_t ;
struct TYPE_9__ {int /*<<< orphan*/  di_flags; struct TYPE_9__* di_next; int /*<<< orphan*/  di_name; } ;
typedef  TYPE_2__ dt_ident_t ;

/* Variables and functions */
 int /*<<< orphan*/  DT_IDFLG_ORPHAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 

void
FUNC3(dt_idhash_t *dhp, dt_ident_t *idp)
{
	ulong_t h;

	if (dhp->dh_tmpl != NULL)
		FUNC0(dhp); /* fill hash w/ initial population */

	h = FUNC1(idp->di_name, NULL) % dhp->dh_hashsz;
	idp->di_next = dhp->dh_hash[h];
	idp->di_flags &= ~DT_IDFLG_ORPHAN;

	dhp->dh_hash[h] = idp;
	dhp->dh_nelems++;

	if (dhp->dh_defer != NULL)
		dhp->dh_defer(dhp, idp);
}