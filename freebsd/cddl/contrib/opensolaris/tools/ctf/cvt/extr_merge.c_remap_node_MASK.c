#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int t_id; } ;
typedef  TYPE_3__ tdesc_t ;
struct TYPE_13__ {int md_flags; int /*<<< orphan*/  md_tdtbr; TYPE_2__* md_tgt; TYPE_1__* md_parent; int /*<<< orphan*/  md_ta; } ;
typedef  TYPE_4__ merge_cb_data_t ;
struct TYPE_11__ {int /*<<< orphan*/  td_idhash; } ;
struct TYPE_10__ {int /*<<< orphan*/  td_idhash; } ;

/* Variables and functions */
 int MCD_F_REFMERGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__**) ; 

__attribute__((used)) static int
FUNC5(tdesc_t **tgtp, tdesc_t *oldtgt, int selftid, tdesc_t *newself,
    merge_cb_data_t *mcd)
{
	tdesc_t *tgt = NULL;
	tdesc_t template;
	int oldid = oldtgt->t_id;

	if (oldid == selftid) {
		*tgtp = newself;
		return (1);
	}

	if ((template.t_id = FUNC2(mcd->md_ta, oldid)) == 0)
		FUNC0("failed to get mapping for tid %d <%x>\n", oldid, oldid);

	if (!FUNC3(mcd->md_parent->td_idhash, (void *)&template,
	    (void *)&tgt) && (!(mcd->md_flags & MCD_F_REFMERGE) ||
	    !FUNC3(mcd->md_tgt->td_idhash, (void *)&template,
	    (void *)&tgt))) {
		FUNC1(3, "Remap couldn't find %d <%x> (from %d <%x>)\n", template.t_id,
		    template.t_id, oldid, oldid);
		*tgtp = oldtgt;
		FUNC4(mcd->md_tdtbr, tgtp);
		return (0);
	}

	*tgtp = tgt;
	return (1);
}