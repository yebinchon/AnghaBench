#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct v1_disk_dqblk {int dummy; } ;
struct TYPE_8__ {scalar_t__ dqb_bhardlimit; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_ihardlimit; scalar_t__ dqb_isoftlimit; } ;
struct dquot {int dq_type; int /*<<< orphan*/  dq_flags; TYPE_2__ dq_dqb; int /*<<< orphan*/  dq_id; TYPE_3__* dq_sb; } ;
struct TYPE_11__ {int /*<<< orphan*/  reads; } ;
struct TYPE_10__ {int /*<<< orphan*/ * files; } ;
struct TYPE_9__ {TYPE_1__* s_op; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* quota_read ) (TYPE_3__*,int,char*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_FAKE_B ; 
 int EINVAL ; 
 TYPE_6__ dqstats ; 
 int /*<<< orphan*/  FUNC0 (struct v1_disk_dqblk*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct v1_disk_dqblk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dquot *dquot)
{
	int type = dquot->dq_type;
	struct v1_disk_dqblk dqblk;

	if (!FUNC1(dquot->dq_sb)->files[type])
		return -EINVAL;

	/* Set structure to 0s in case read fails/is after end of file */
	FUNC0(&dqblk, 0, sizeof(struct v1_disk_dqblk));
	dquot->dq_sb->s_op->quota_read(dquot->dq_sb, type, (char *)&dqblk,
			sizeof(struct v1_disk_dqblk), FUNC5(dquot->dq_id));

	FUNC4(&dquot->dq_dqb, &dqblk);
	if (dquot->dq_dqb.dqb_bhardlimit == 0 &&
	    dquot->dq_dqb.dqb_bsoftlimit == 0 &&
	    dquot->dq_dqb.dqb_ihardlimit == 0 &&
	    dquot->dq_dqb.dqb_isoftlimit == 0)
		FUNC2(DQ_FAKE_B, &dquot->dq_flags);
	dqstats.reads++;

	return 0;
}