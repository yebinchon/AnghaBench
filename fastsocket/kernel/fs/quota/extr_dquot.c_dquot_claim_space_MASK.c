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
 scalar_t__ FUNC0 (struct inode*) ; 
 int MAXQUOTAS ; 
 int QUOTA_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct inode *inode, qsize_t number)
{
	int cnt;
	int ret = QUOTA_OK;

	if (FUNC0(inode)) {
		FUNC3(inode, number);
		goto out;
	}

	FUNC1(&FUNC5(inode->i_sb)->dqptr_sem);
	if (FUNC0(inode))	{
		FUNC8(&FUNC5(inode->i_sb)->dqptr_sem);
		FUNC3(inode, number);
		goto out;
	}

	FUNC6(&dq_data_lock);
	/* Claim reserved quotas to allocated quotas */
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		if (inode->i_dquot[cnt])
			FUNC2(inode->i_dquot[cnt],
							number);
	}
	/* Update inode bytes */
	FUNC3(inode, number);
	FUNC7(&dq_data_lock);
	/* Dirtify all the dquots - this can block when journalling */
	for (cnt = 0; cnt < MAXQUOTAS; cnt++)
		if (inode->i_dquot[cnt])
			FUNC4(inode->i_dquot[cnt]);
	FUNC8(&FUNC5(inode->i_sb)->dqptr_sem);
out:
	return ret;
}