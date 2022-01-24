#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct quota_info {int /*<<< orphan*/  dqio_mutex; TYPE_1__** ops; } ;
struct dquot {size_t dq_type; int /*<<< orphan*/  dq_flags; int /*<<< orphan*/  dq_sb; } ;
struct TYPE_2__ {int (* commit_dqblk ) (struct dquot*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_ACTIVE_B ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct dquot*) ; 
 int /*<<< orphan*/  dq_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct quota_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct dquot*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct dquot *dquot)
{
	int ret = 0;
	struct quota_info *dqopt = FUNC3(dquot->dq_sb);

	FUNC1(&dqopt->dqio_mutex);
	FUNC4(&dq_list_lock);
	if (!FUNC0(dquot)) {
		FUNC5(&dq_list_lock);
		goto out_sem;
	}
	FUNC5(&dq_list_lock);
	/* Inactive dquot can be only if there was error during read/init
	 * => we have better not writing it */
	if (FUNC7(DQ_ACTIVE_B, &dquot->dq_flags))
		ret = dqopt->ops[dquot->dq_type]->commit_dqblk(dquot);
	else
		ret = -EIO;
out_sem:
	FUNC2(&dqopt->dqio_mutex);
	return ret;
}