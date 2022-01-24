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
struct inode {scalar_t__ i_uid; scalar_t__ i_gid; int /*<<< orphan*/  i_sb; struct dquot** i_dquot; } ;
struct iattr {int ia_valid; scalar_t__ ia_uid; scalar_t__ ia_gid; } ;
struct dquot {int dummy; } ;
typedef  scalar_t__ qsize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dqptr_sem; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_UID ; 
 size_t GRPQUOTA ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int MAXQUOTAS ; 
 int NO_QUOTA ; 
 char QUOTA_NL_NOWARN ; 
 int QUOTA_OK ; 
 size_t USRQUOTA ; 
 int FUNC1 (struct dquot*,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct dquot*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dq_data_lock ; 
 struct dquot* FUNC4 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC6 (struct dquot*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dquot*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct dquot*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct dquot*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dquot*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct dquot*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct dquot**,char*) ; 
 char FUNC13 (struct dquot*,scalar_t__) ; 
 char FUNC14 (struct dquot*,int) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct dquot*) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct inode *inode, struct iattr *iattr)
{
	qsize_t space, cur_space;
	qsize_t rsv_space = 0;
	struct dquot *transfer_from[MAXQUOTAS];
	struct dquot *transfer_to[MAXQUOTAS];
	int cnt, ret = QUOTA_OK;
	int chuid = iattr->ia_valid & ATTR_UID && inode->i_uid != iattr->ia_uid,
	    chgid = iattr->ia_valid & ATTR_GID && inode->i_gid != iattr->ia_gid;
	char warntype_to[MAXQUOTAS];
	char warntype_from_inodes[MAXQUOTAS], warntype_from_space[MAXQUOTAS];

	/* First test before acquiring mutex - solves deadlocks when we
         * re-enter the quota code and are already holding the mutex */
	if (FUNC0(inode))
		return QUOTA_OK;
	/* Initialize the arrays */
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		transfer_from[cnt] = NULL;
		transfer_to[cnt] = NULL;
		warntype_to[cnt] = QUOTA_NL_NOWARN;
	}
	if (chuid)
		transfer_to[USRQUOTA] = FUNC4(inode->i_sb, iattr->ia_uid,
					      USRQUOTA);
	if (chgid)
		transfer_to[GRPQUOTA] = FUNC4(inode->i_sb, iattr->ia_gid,
					      GRPQUOTA);

	FUNC3(&FUNC18(inode->i_sb)->dqptr_sem);
	/* Now recheck reliably when holding dqptr_sem */
	if (FUNC0(inode)) {	/* File without quota accounting? */
		FUNC21(&FUNC18(inode->i_sb)->dqptr_sem);
		goto put_all;
	}
	FUNC19(&dq_data_lock);
	cur_space = FUNC15(inode);
	rsv_space = FUNC16(inode);
	space = cur_space + rsv_space;
	/* Build the transfer_from list and check the limits */
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		if (!transfer_to[cnt])
			continue;
		transfer_from[cnt] = inode->i_dquot[cnt];
		if (FUNC2(transfer_to[cnt], 1, warntype_to + cnt) ==
		    NO_QUOTA || FUNC1(transfer_to[cnt], space, 0,
		    warntype_to + cnt) == NO_QUOTA)
			goto over_quota;
	}

	/*
	 * Finally perform the needed transfer from transfer_from to transfer_to
	 */
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		/*
		 * Skip changes for same uid or gid or for turned off quota-type.
		 */
		if (!transfer_to[cnt])
			continue;

		/* Due to IO error we might not have transfer_from[] structure */
		if (transfer_from[cnt]) {
			warntype_from_inodes[cnt] =
				FUNC14(transfer_from[cnt], 1);
			warntype_from_space[cnt] =
				FUNC13(transfer_from[cnt], space);
			FUNC6(transfer_from[cnt], 1);
			FUNC7(transfer_from[cnt], cur_space);
			FUNC8(transfer_from[cnt],
						  rsv_space);
		}

		FUNC9(transfer_to[cnt], 1);
		FUNC10(transfer_to[cnt], cur_space);
		FUNC11(transfer_to[cnt], rsv_space);

		inode->i_dquot[cnt] = transfer_to[cnt];
	}
	FUNC20(&dq_data_lock);
	FUNC21(&FUNC18(inode->i_sb)->dqptr_sem);

	/* Dirtify all the dquots - this can block when journalling */
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		if (transfer_from[cnt])
			FUNC17(transfer_from[cnt]);
		if (transfer_to[cnt]) {
			FUNC17(transfer_to[cnt]);
			/* The reference we got is transferred to the inode */
			transfer_to[cnt] = NULL;
		}
	}
warn_put_all:
	FUNC12(transfer_to, warntype_to);
	FUNC12(transfer_from, warntype_from_inodes);
	FUNC12(transfer_from, warntype_from_space);
put_all:
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		FUNC5(transfer_from[cnt]);
		FUNC5(transfer_to[cnt]);
	}
	return ret;
over_quota:
	FUNC20(&dq_data_lock);
	FUNC21(&FUNC18(inode->i_sb)->dqptr_sem);
	/* Clear dquot pointers we don't want to dqput() */
	for (cnt = 0; cnt < MAXQUOTAS; cnt++)
		transfer_from[cnt] = NULL;
	ret = NO_QUOTA;
	goto warn_put_all;
}