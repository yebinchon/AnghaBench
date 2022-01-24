#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_4__ {scalar_t__ dqb_curspace; scalar_t__ dqb_rsvspace; scalar_t__ dqb_bhardlimit; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_btime; } ;
struct dquot {size_t dq_type; TYPE_1__ dq_dqb; int /*<<< orphan*/  dq_flags; struct super_block* dq_sb; } ;
typedef  scalar_t__ qsize_t ;
struct TYPE_6__ {TYPE_2__* info; } ;
struct TYPE_5__ {scalar_t__ dqi_bgrace; } ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_FAKE_B ; 
 int NO_QUOTA ; 
 char QUOTA_NL_BHARDWARN ; 
 char QUOTA_NL_BSOFTLONGWARN ; 
 char QUOTA_NL_BSOFTWARN ; 
 char QUOTA_NL_NOWARN ; 
 int QUOTA_OK ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dquot*) ; 
 TYPE_3__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dquot *dquot, qsize_t space, int prealloc, char *warntype)
{
	qsize_t tspace;
	struct super_block *sb = dquot->dq_sb;

	*warntype = QUOTA_NL_NOWARN;
	if (!FUNC3(sb, dquot->dq_type) ||
	    FUNC4(DQ_FAKE_B, &dquot->dq_flags))
		return QUOTA_OK;

	tspace = dquot->dq_dqb.dqb_curspace + dquot->dq_dqb.dqb_rsvspace
		+ space;

	if (dquot->dq_dqb.dqb_bhardlimit &&
	    tspace > dquot->dq_dqb.dqb_bhardlimit &&
            !FUNC1(dquot)) {
		if (!prealloc)
			*warntype = QUOTA_NL_BHARDWARN;
		return NO_QUOTA;
	}

	if (dquot->dq_dqb.dqb_bsoftlimit &&
	    tspace > dquot->dq_dqb.dqb_bsoftlimit &&
	    dquot->dq_dqb.dqb_btime &&
	    FUNC0() >= dquot->dq_dqb.dqb_btime &&
            !FUNC1(dquot)) {
		if (!prealloc)
			*warntype = QUOTA_NL_BSOFTLONGWARN;
		return NO_QUOTA;
	}

	if (dquot->dq_dqb.dqb_bsoftlimit &&
	    tspace > dquot->dq_dqb.dqb_bsoftlimit &&
	    dquot->dq_dqb.dqb_btime == 0) {
		if (!prealloc) {
			*warntype = QUOTA_NL_BSOFTWARN;
			dquot->dq_dqb.dqb_btime = FUNC0() +
			    FUNC2(sb)->info[dquot->dq_type].dqi_bgrace;
		}
		else
			/*
			 * We don't allow preallocation to exceed softlimit so exceeding will
			 * be always printed
			 */
			return NO_QUOTA;
	}

	return QUOTA_OK;
}