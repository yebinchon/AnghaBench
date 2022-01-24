#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tdtrav_cb_f ;
struct TYPE_13__ {int md_flags; int /*<<< orphan*/  md_iitba; TYPE_2__* md_parent; int /*<<< orphan*/  md_ta; } ;
typedef  TYPE_3__ merge_cb_data_t ;
struct TYPE_14__ {int iif_refmerge; int /*<<< orphan*/  iif_newidx; int /*<<< orphan*/  iif_ta; TYPE_5__* iif_template; } ;
typedef  TYPE_4__ iifind_data_t ;
struct TYPE_15__ {char* ii_name; int /*<<< orphan*/  ii_type; TYPE_1__* ii_dtype; } ;
typedef  TYPE_5__ iidesc_t ;
struct TYPE_12__ {int /*<<< orphan*/  td_iihash; int /*<<< orphan*/  td_curvgen; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_id; } ;

/* Variables and functions */
 int MCD_F_REFMERGE ; 
 int MCD_F_SELFUNIQUIFY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  iidesc_match ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/ * map_post ; 
 int /*<<< orphan*/  map_pre ; 
 int /*<<< orphan*/ * map_self_post ; 

__attribute__((used)) static int
FUNC5(void *data, void *arg)
{
	iidesc_t *sii = data;
	merge_cb_data_t *mcd = arg;
	iifind_data_t iif;
	tdtrav_cb_f *post;

	post = (mcd->md_flags & MCD_F_SELFUNIQUIFY ? map_self_post : map_post);

	/* Map the tdesc nodes */
	(void) FUNC3(sii, &mcd->md_parent->td_curvgen, NULL, map_pre, post,
	    mcd);

	/* Map the iidesc nodes */
	iif.iif_template = sii;
	iif.iif_ta = mcd->md_ta;
	iif.iif_newidx = FUNC1(mcd->md_ta, sii->ii_dtype->t_id);
	iif.iif_refmerge = (mcd->md_flags & MCD_F_REFMERGE);

	if (FUNC2(mcd->md_parent->td_iihash, sii, iidesc_match,
	    &iif) == 1)
		/* successfully mapped */
		return (1);

	FUNC0(3, "tba %s (%d)\n", (sii->ii_name ? sii->ii_name : "(anon)"),
	    sii->ii_type);

	FUNC4(mcd->md_iitba, sii);

	return (0);
}