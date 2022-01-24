#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int td_ref; int /*<<< orphan*/  td_layouthash; int /*<<< orphan*/  td_iihash; void* td_curemark; void* td_curvgen; } ;
typedef  TYPE_1__ tdata_t ;
struct TYPE_8__ {void* md_ta; void* md_fdida; TYPE_1__* md_tgt; int /*<<< orphan*/  md_flags; TYPE_1__* md_parent; } ;
typedef  TYPE_2__ merge_cb_data_t ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 int /*<<< orphan*/  MCD_F_REFMERGE ; 
 int /*<<< orphan*/  MCD_F_SELFUNIQUIFY ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int debug_level ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC8(tdata_t *cur, tdata_t *mstr, tdata_t *tgt, int selfuniquify)
{
	merge_cb_data_t mcd;

	cur->td_ref++;
	mstr->td_ref++;
	if (tgt)
		tgt->td_ref++;

	FUNC4(cur->td_ref == 1 && mstr->td_ref == 1 &&
	    (tgt == NULL || tgt->td_ref == 1));

	mcd.md_parent = mstr;
	mcd.md_tgt = (tgt ? tgt : mstr);
	mcd.md_ta = FUNC2(NULL, NULL);
	mcd.md_fdida = FUNC2(NULL, NULL);
	mcd.md_flags = 0;

	if (selfuniquify)
		mcd.md_flags |= MCD_F_SELFUNIQUIFY;
	if (tgt)
		mcd.md_flags |= MCD_F_REFMERGE;

	mstr->td_curvgen = FUNC0(mstr->td_curvgen, cur->td_curvgen);
	mstr->td_curemark = FUNC0(mstr->td_curemark, cur->td_curemark);

	FUNC7(cur->td_iihash, &mcd);

	if (debug_level >= 3) {
		FUNC5(3, "Type association stats\n");
		FUNC3(mcd.md_ta, 0);
		FUNC5(3, "Layout hash stats\n");
		FUNC6(mcd.md_tgt->td_layouthash, 1);
	}

	FUNC1(mcd.md_fdida);
	FUNC1(mcd.md_ta);

	cur->td_ref--;
	mstr->td_ref--;
	if (tgt)
		tgt->td_ref--;
}