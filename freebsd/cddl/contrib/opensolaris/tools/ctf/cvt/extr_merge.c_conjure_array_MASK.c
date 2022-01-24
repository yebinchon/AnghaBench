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
struct TYPE_9__ {TYPE_2__* t_ardef; int /*<<< orphan*/  t_id; } ;
typedef  TYPE_1__ tdesc_t ;
typedef  int /*<<< orphan*/  merge_cb_data_t ;
struct TYPE_10__ {int /*<<< orphan*/  ad_nelems; int /*<<< orphan*/  ad_idxtype; int /*<<< orphan*/  ad_contents; } ;
typedef  TYPE_2__ ardef_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int) ; 

__attribute__((used)) static tdesc_t *
FUNC3(tdesc_t *old, int newselfid, merge_cb_data_t *mcd)
{
	tdesc_t *new = FUNC0(old, newselfid);
	ardef_t *nar = FUNC2(sizeof (ardef_t));
	ardef_t *oar = old->t_ardef;

	(void) FUNC1(&nar->ad_contents, oar->ad_contents, old->t_id, new,
	    mcd);
	(void) FUNC1(&nar->ad_idxtype, oar->ad_idxtype, old->t_id, new,
	    mcd);

	nar->ad_nelems = oar->ad_nelems;

	new->t_ardef = nar;

	return (new);
}