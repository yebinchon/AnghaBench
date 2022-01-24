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
struct quota_info {int /*<<< orphan*/  dqio_mutex; TYPE_1__** ops; int /*<<< orphan*/ * info; } ;
struct dquot {size_t dq_type; int /*<<< orphan*/  dq_lock; int /*<<< orphan*/  dq_flags; int /*<<< orphan*/  dq_sb; int /*<<< orphan*/  dq_off; } ;
struct TYPE_2__ {int (* read_dqblk ) (struct dquot*) ;int (* commit_dqblk ) (struct dquot*) ;int (* write_file_info ) (int /*<<< orphan*/ ,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_ACTIVE_B ; 
 int /*<<< orphan*/  DQ_READ_B ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct quota_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dquot*) ; 
 int FUNC6 (struct dquot*) ; 
 int FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct dquot *dquot)
{
	int ret = 0, ret2 = 0;
	struct quota_info *dqopt = FUNC3(dquot->dq_sb);

	FUNC1(&dquot->dq_lock);
	FUNC1(&dqopt->dqio_mutex);
	if (!FUNC8(DQ_READ_B, &dquot->dq_flags))
		ret = dqopt->ops[dquot->dq_type]->read_dqblk(dquot);
	if (ret < 0)
		goto out_iolock;
	FUNC4(DQ_READ_B, &dquot->dq_flags);
	/* Instantiate dquot if needed */
	if (!FUNC8(DQ_ACTIVE_B, &dquot->dq_flags) && !dquot->dq_off) {
		ret = dqopt->ops[dquot->dq_type]->commit_dqblk(dquot);
		/* Write the info if needed */
		if (FUNC0(&dqopt->info[dquot->dq_type])) {
			ret2 = dqopt->ops[dquot->dq_type]->write_file_info(
						dquot->dq_sb, dquot->dq_type);
		}
		if (ret < 0)
			goto out_iolock;
		if (ret2 < 0) {
			ret = ret2;
			goto out_iolock;
		}
	}
	FUNC4(DQ_ACTIVE_B, &dquot->dq_flags);
out_iolock:
	FUNC2(&dqopt->dqio_mutex);
	FUNC2(&dquot->dq_lock);
	return ret;
}