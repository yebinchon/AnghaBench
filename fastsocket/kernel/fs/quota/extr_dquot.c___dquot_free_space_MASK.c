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
 int DQUOT_SPACE_RESERVE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int MAXQUOTAS ; 
 int QUOTA_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*) ; 
 char FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct inode *inode, qsize_t number, int flags)
{
	unsigned int cnt;
	char warntype[MAXQUOTAS];
	int reserve = flags & DQUOT_SPACE_RESERVE;

	/* First test before acquiring mutex - solves deadlocks when we
         * re-enter the quota code and are already holding the mutex */
	if (FUNC0(inode)) {
out_sub:
		FUNC6(inode, number, reserve);
		return QUOTA_OK;
	}

	FUNC1(&FUNC8(inode->i_sb)->dqptr_sem);
	/* Now recheck reliably when holding dqptr_sem */
	if (FUNC0(inode)) {
		FUNC11(&FUNC8(inode->i_sb)->dqptr_sem);
		goto out_sub;
	}
	FUNC9(&dq_data_lock);
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		if (!inode->i_dquot[cnt])
			continue;
		warntype[cnt] = FUNC5(inode->i_dquot[cnt], number);
		if (reserve)
			FUNC3(inode->i_dquot[cnt], number);
		else
			FUNC2(inode->i_dquot[cnt], number);
	}
	FUNC6(inode, number, reserve);
	FUNC10(&dq_data_lock);

	if (reserve)
		goto out_unlock;
	/* Dirtify all the dquots - this can block when journalling */
	for (cnt = 0; cnt < MAXQUOTAS; cnt++)
		if (inode->i_dquot[cnt])
			FUNC7(inode->i_dquot[cnt]);
out_unlock:
	FUNC4(inode->i_dquot, warntype);
	FUNC11(&FUNC8(inode->i_sb)->dqptr_sem);
	return QUOTA_OK;
}