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
struct inode {int /*<<< orphan*/  i_sb; struct dquot** i_dquot; } ;
struct dquot {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dqptr_sem; } ;

/* Variables and functions */
 int MAXQUOTAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dquot*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct inode *inode)
{
	int cnt;
	struct dquot *put[MAXQUOTAS];

	FUNC0(&FUNC2(inode->i_sb)->dqptr_sem);
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		put[cnt] = inode->i_dquot[cnt];
		inode->i_dquot[cnt] = NULL;
	}
	FUNC3(&FUNC2(inode->i_sb)->dqptr_sem);

	for (cnt = 0; cnt < MAXQUOTAS; cnt++)
		FUNC1(put[cnt]);
	return 0;
}