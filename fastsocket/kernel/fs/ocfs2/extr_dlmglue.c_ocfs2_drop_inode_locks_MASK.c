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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_rw_lockres; int /*<<< orphan*/  ip_inode_lockres; int /*<<< orphan*/  ip_open_lockres; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct inode *inode)
{
	int status, err;

	FUNC2();

	/* No need to call ocfs2_mark_lockres_freeing here -
	 * ocfs2_clear_inode has done it for us. */

	err = FUNC5(FUNC1(inode->i_sb),
			      &FUNC0(inode)->ip_open_lockres);
	if (err < 0)
		FUNC3(err);

	status = err;

	err = FUNC5(FUNC1(inode->i_sb),
			      &FUNC0(inode)->ip_inode_lockres);
	if (err < 0)
		FUNC3(err);
	if (err < 0 && !status)
		status = err;

	err = FUNC5(FUNC1(inode->i_sb),
			      &FUNC0(inode)->ip_rw_lockres);
	if (err < 0)
		FUNC3(err);
	if (err < 0 && !status)
		status = err;

	FUNC4(status);
	return status;
}