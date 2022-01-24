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
struct inode {int /*<<< orphan*/  i_sb; scalar_t__* i_dquot; } ;
typedef  int /*<<< orphan*/  qsize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dqptr_sem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode const*) ; 
 int MAXQUOTAS ; 
 int NO_QUOTA ; 
 char QUOTA_NL_NOWARN ; 
 int QUOTA_OK ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(const struct inode *inode, qsize_t number)
{
	int cnt, ret = NO_QUOTA;
	char warntype[MAXQUOTAS];

	/* First test before acquiring mutex - solves deadlocks when we
         * re-enter the quota code and are already holding the mutex */
	if (FUNC0(inode))
		return QUOTA_OK;
	for (cnt = 0; cnt < MAXQUOTAS; cnt++)
		warntype[cnt] = QUOTA_NL_NOWARN;
	FUNC2(&FUNC6(inode->i_sb)->dqptr_sem);
	if (FUNC0(inode)) {
		FUNC9(&FUNC6(inode->i_sb)->dqptr_sem);
		return QUOTA_OK;
	}
	FUNC7(&dq_data_lock);
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		if (!inode->i_dquot[cnt])
			continue;
		if (FUNC1(inode->i_dquot[cnt], number, warntype+cnt)
		    == NO_QUOTA)
			goto warn_put_all;
	}

	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		if (!inode->i_dquot[cnt])
			continue;
		FUNC3(inode->i_dquot[cnt], number);
	}
	ret = QUOTA_OK;
warn_put_all:
	FUNC8(&dq_data_lock);
	if (ret == QUOTA_OK)
		/* Dirtify all the dquots - this can block when journalling */
		for (cnt = 0; cnt < MAXQUOTAS; cnt++)
			if (inode->i_dquot[cnt])
				FUNC5(inode->i_dquot[cnt]);
	FUNC4(inode->i_dquot, warntype);
	FUNC9(&FUNC6(inode->i_sb)->dqptr_sem);
	return ret;
}