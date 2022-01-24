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
struct TYPE_5__ {int /*<<< orphan*/  td_mergelock; struct TYPE_5__* td_parname; struct TYPE_5__* td_parlabel; int /*<<< orphan*/  td_fwdlist; int /*<<< orphan*/  td_idhash; int /*<<< orphan*/  td_layouthash; int /*<<< orphan*/  td_iihash; } ;
typedef  TYPE_1__ tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * iidesc_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * tdesc_free_cb ; 

void
FUNC5(tdata_t *td)
{
	FUNC1(td->td_iihash, iidesc_free, NULL);
	FUNC1(td->td_layouthash, tdesc_free_cb, NULL);
	FUNC1(td->td_idhash, NULL, NULL);
	FUNC2(td->td_fwdlist, NULL, NULL);

	FUNC4(td);

	FUNC0(td->td_parlabel);
	FUNC0(td->td_parname);

	FUNC3(&td->td_mergelock);

	FUNC0(td);
}