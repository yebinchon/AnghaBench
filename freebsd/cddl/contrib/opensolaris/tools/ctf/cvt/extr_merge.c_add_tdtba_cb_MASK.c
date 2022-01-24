#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  t_id; } ;
typedef  TYPE_1__ tdesc_t ;
struct TYPE_6__ {int /*<<< orphan*/  md_tdtba; int /*<<< orphan*/  md_ta; } ;
typedef  TYPE_2__ merge_cb_data_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC4(void *data, void *arg)
{
	tdesc_t *tdp = data;
	merge_cb_data_t *mcd = arg;
	int newid;
	int rc;

	newid = FUNC2(mcd->md_ta, tdp->t_id);
	FUNC1(newid != -1);

	if ((rc = FUNC0(tdp, newid, mcd)))
		FUNC3(mcd->md_tdtba, (void *)tdp);

	return (rc);
}