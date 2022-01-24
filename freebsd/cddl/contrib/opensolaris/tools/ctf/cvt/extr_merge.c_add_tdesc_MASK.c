#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int t_id; size_t t_type; } ;
typedef  TYPE_3__ tdesc_t ;
struct TYPE_16__ {TYPE_2__* md_tgt; TYPE_1__* md_parent; } ;
typedef  TYPE_4__ merge_cb_data_t ;
struct TYPE_17__ {TYPE_3__* (* conjure ) (TYPE_3__*,int,TYPE_4__*) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  td_layouthash; int /*<<< orphan*/  td_idhash; } ;
struct TYPE_13__ {int /*<<< orphan*/  td_idhash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (TYPE_3__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_5__* tdesc_ops ; 

__attribute__((used)) static int
FUNC6(tdesc_t *oldtdp, int newid, merge_cb_data_t *mcd)
{
	tdesc_t *newtdp;
	tdesc_t template;

	template.t_id = newid;
	FUNC0(FUNC3(mcd->md_parent->td_idhash,
	    (void *)&template, NULL) == 0);

	FUNC1(3, "trying to conjure %d %s (%d, <%x>) as %d, <%x>\n",
	    oldtdp->t_type, FUNC5(oldtdp), oldtdp->t_id,
	    oldtdp->t_id, newid, newid);

	if ((newtdp = tdesc_ops[oldtdp->t_type].conjure(oldtdp, newid,
	    mcd)) == NULL)
		/* couldn't map everything */
		return (0);

	FUNC1(3, "succeeded\n");

	FUNC2(mcd->md_tgt->td_idhash, newtdp);
	FUNC2(mcd->md_tgt->td_layouthash, newtdp);

	return (1);
}