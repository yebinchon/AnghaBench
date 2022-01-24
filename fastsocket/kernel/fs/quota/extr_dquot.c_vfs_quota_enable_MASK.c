#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {int dummy; } ;
struct quota_info {int /*<<< orphan*/  dqonoff_mutex; int /*<<< orphan*/  flags; } ;
struct inode {struct super_block* i_sb; } ;

/* Variables and functions */
 unsigned int DQUOT_LIMITS_ENABLED ; 
 unsigned int DQUOT_SUSPENDED ; 
 unsigned int DQUOT_USAGE_ENABLED ; 
 int EBUSY ; 
 int /*<<< orphan*/  dq_state_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct quota_info* FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (struct super_block*,int) ; 
 scalar_t__ FUNC5 (struct super_block*,int) ; 
 scalar_t__ FUNC6 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct inode*,int,int,unsigned int) ; 
 int FUNC10 (struct super_block*,int) ; 

int FUNC11(struct inode *inode, int type, int format_id,
		unsigned int flags)
{
	int ret = 0;
	struct super_block *sb = inode->i_sb;
	struct quota_info *dqopt = FUNC3(sb);

	/* Just unsuspend quotas? */
	if (flags & DQUOT_SUSPENDED)
		return FUNC10(sb, type);
	if (!flags)
		return 0;
	/* Just updating flags needed? */
	if (FUNC5(sb, type)) {
		FUNC1(&dqopt->dqonoff_mutex);
		/* Now do a reliable test... */
		if (!FUNC5(sb, type)) {
			FUNC2(&dqopt->dqonoff_mutex);
			goto load_quota;
		}
		if (flags & DQUOT_USAGE_ENABLED &&
		    FUNC6(sb, type)) {
			ret = -EBUSY;
			goto out_lock;
		}
		if (flags & DQUOT_LIMITS_ENABLED &&
		    FUNC4(sb, type)) {
			ret = -EBUSY;
			goto out_lock;
		}
		FUNC7(&dq_state_lock);
		FUNC3(sb)->flags |= FUNC0(flags, type);
		FUNC8(&dq_state_lock);
out_lock:
		FUNC2(&dqopt->dqonoff_mutex);
		return ret;
	}

load_quota:
	return FUNC9(inode, type, format_id, flags);
}