#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file_lock {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_7__ {int (* lock ) (struct file*,int,struct file_lock*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  time_delta; } ;
struct TYPE_5__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_READ ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct inode*) ; 
 int FUNC3 (struct file*,struct file_lock*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct file*,int,struct file_lock*) ; 

__attribute__((used)) static int
FUNC9(struct file *filp, int cmd, struct file_lock *fl, int is_local)
{
	struct inode *inode = filp->f_mapping->host;
	int status;

	/*
	 * Flush all pending writes before doing anything
	 * with locks..
	 */
	status = FUNC6(filp->f_mapping);
	if (status != 0)
		goto out;

	/*
	 * Use local locking if mounted with "-onolock" or with appropriate
	 * "-olocal_lock="
	 */
	if (!is_local)
		status = FUNC0(inode)->lock(filp, cmd, fl);
	else
		status = FUNC3(filp, fl);
	if (status < 0)
		goto out;

	/*
	 * Revalidate the cache if the server has time stamps granular
	 * enough to detect subsecond changes.  Otherwise, clear the
	 * cache to prevent missing any changes.
	 *
	 * This makes locking act as a cache coherency point.
	 */
	FUNC6(filp->f_mapping);
	if (!FUNC5(inode, FMODE_READ)) {
		if (FUNC4(&FUNC1(inode)->time_delta))
			FUNC2(FUNC1(inode), inode);
		else
			FUNC7(inode);
	}
out:
	return status;
}