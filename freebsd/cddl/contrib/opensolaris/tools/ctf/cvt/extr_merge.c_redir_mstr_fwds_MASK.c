#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * rmd_map; TYPE_1__* rmd_tgt; } ;
typedef  TYPE_2__ redir_mstr_data_t ;
struct TYPE_8__ {TYPE_1__* md_tgt; int /*<<< orphan*/  md_fdida; } ;
typedef  TYPE_3__ merge_cb_data_t ;
typedef  int /*<<< orphan*/  alist_t ;
struct TYPE_6__ {int /*<<< orphan*/  td_curvgen; int /*<<< orphan*/  td_iihash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fwd_redir_cbs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  redir_mstr_fwd_cb ; 

__attribute__((used)) static void
FUNC4(merge_cb_data_t *mcd)
{
	redir_mstr_data_t rmd;
	alist_t *map = FUNC2(NULL, NULL);

	rmd.rmd_tgt = mcd->md_tgt;
	rmd.rmd_map = map;

	if (FUNC1(mcd->md_fdida, redir_mstr_fwd_cb, &rmd)) {
		(void) FUNC3(mcd->md_tgt->td_iihash,
		    &mcd->md_tgt->td_curvgen, fwd_redir_cbs, NULL, NULL, map);
	}

	FUNC0(map);
}