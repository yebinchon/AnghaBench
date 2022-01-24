#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_1__* dq_op; } ;
struct dquot {unsigned int dq_id; int /*<<< orphan*/  dq_sb; int /*<<< orphan*/  dq_flags; int /*<<< orphan*/  dq_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  lookups; int /*<<< orphan*/  cache_hits; } ;
struct TYPE_3__ {scalar_t__ (* acquire_dquot ) (struct dquot*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DQ_ACTIVE_B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dquot*) ; 
 int /*<<< orphan*/  dq_list_lock ; 
 int /*<<< orphan*/  dq_state_lock ; 
 int /*<<< orphan*/  FUNC4 (struct dquot*) ; 
 TYPE_2__ dqstats ; 
 struct dquot* FUNC5 (unsigned int,struct super_block*,unsigned int,int) ; 
 struct dquot* FUNC6 (struct super_block*,int) ; 
 unsigned int FUNC7 (struct super_block*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC9 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC10 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct dquot*) ; 

struct dquot *FUNC18(struct super_block *sb, unsigned int id, int type)
{
	unsigned int hashent = FUNC7(sb, id, type);
	struct dquot *dquot = NULL, *empty = NULL;

        if (!FUNC11(sb, type))
		return NULL;
we_slept:
	FUNC13(&dq_list_lock);
	FUNC13(&dq_state_lock);
	if (!FUNC11(sb, type)) {
		FUNC14(&dq_state_lock);
		FUNC14(&dq_list_lock);
		goto out;
	}
	FUNC14(&dq_state_lock);

	dquot = FUNC5(hashent, sb, id, type);
	if (!dquot) {
		if (!empty) {
			FUNC14(&dq_list_lock);
			empty = FUNC6(sb, type);
			if (!empty)
				FUNC12();	/* Try to wait for a moment... */
			goto we_slept;
		}
		dquot = empty;
		empty = NULL;
		dquot->dq_id = id;
		/* all dquots go on the inuse_list */
		FUNC9(dquot);
		/* hash it first so it can be found */
		FUNC8(dquot);
		dqstats.lookups++;
		FUNC14(&dq_list_lock);
	} else {
		if (!FUNC2(&dquot->dq_count))
			FUNC10(dquot);
		FUNC1(&dquot->dq_count);
		dqstats.cache_hits++;
		dqstats.lookups++;
		FUNC14(&dq_list_lock);
	}
	/* Wait for dq_lock - after this we know that either dquot_release() is
	 * already finished or it will be canceled due to dq_count > 1 test */
	FUNC17(dquot);
	/* Read the dquot / allocate space in quota file */
	if (!FUNC16(DQ_ACTIVE_B, &dquot->dq_flags) &&
	    sb->dq_op->acquire_dquot(dquot) < 0) {
		FUNC4(dquot);
		dquot = NULL;
		goto out;
	}
#ifdef CONFIG_QUOTA_DEBUG
	BUG_ON(!dquot->dq_sb);	/* Has somebody invalidated entry under us? */
#endif
out:
	if (empty)
		FUNC3(empty);

	return dquot;
}