#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ md_parent; scalar_t__ md_tgt; int /*<<< orphan*/ ** md_tdtbr; int /*<<< orphan*/ * md_tdtba; int /*<<< orphan*/ ** md_iitba; } ;
typedef  TYPE_1__ merge_cb_data_t ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  TDATA_LAYOUT_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  add_iitba_cb ; 
 int /*<<< orphan*/  add_tdtba_cb ; 
 int /*<<< orphan*/  add_tdtbr_cb ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  merge_type_cb ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  tdesc_layoutcmp ; 
 int /*<<< orphan*/  tdesc_layouthash ; 

__attribute__((used)) static void
FUNC9(hash_t *src, merge_cb_data_t *mcd)
{
	list_t *iitba = NULL;
	list_t *tdtbr = NULL;
	int iirc, tdrc;

	mcd->md_iitba = &iitba;
	mcd->md_tdtba = FUNC5(TDATA_LAYOUT_HASH_SIZE, tdesc_layouthash,
	    tdesc_layoutcmp);
	mcd->md_tdtbr = &tdtbr;

	(void) FUNC4(src, merge_type_cb, mcd);

	tdrc = FUNC4(mcd->md_tdtba, add_tdtba_cb, mcd);
	FUNC2(3, "add_tdtba_cb added %d items\n", tdrc);

	iirc = FUNC7(*mcd->md_iitba, add_iitba_cb, mcd);
	FUNC2(3, "add_iitba_cb added %d items\n", iirc);

	FUNC1(FUNC6(*mcd->md_iitba) == 0 &&
	    FUNC3(mcd->md_tdtba) == 0);

	tdrc = FUNC7(*mcd->md_tdtbr, add_tdtbr_cb, mcd);
	FUNC2(3, "add_tdtbr_cb added %d items\n", tdrc);

	if (FUNC6(*mcd->md_tdtbr) != 0)
		FUNC0("Couldn't remap all nodes\n");

	/*
	 * We now have an alist of master forwards and the ids of the new master
	 * definitions for those forwards in mcd->md_fdida.  By this point,
	 * we're guaranteed that all of the master definitions referenced in
	 * fdida have been added to the master tree.  We now traverse through
	 * the master tree, redirecting all edges inbound to forwards that have
	 * definitions to those definitions.
	 */
	if (mcd->md_parent == mcd->md_tgt) {
		FUNC8(mcd);
	}
}