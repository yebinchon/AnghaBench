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
struct nfs4_delegation {TYPE_1__* dl_file; int /*<<< orphan*/  dl_time; int /*<<< orphan*/  dl_recall_lru; int /*<<< orphan*/  dl_count; } ;
struct file_lock {scalar_t__ fl_break_time; scalar_t__ fl_owner; } ;
struct TYPE_2__ {int fi_had_conflict; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  del_recall_lru ; 
 int /*<<< orphan*/  FUNC1 (char*,struct nfs4_delegation*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_delegation*) ; 
 int /*<<< orphan*/  recall_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC7(struct file_lock *fl)
{
	struct nfs4_delegation *dp = (struct nfs4_delegation *)fl->fl_owner;

	FUNC1("NFSD nfsd_break_deleg_cb: dp %p fl %p\n",dp,fl);
	if (!dp)
		return;

	/* We're assuming the state code never drops its reference
	 * without first removing the lease.  Since we're in this lease
	 * callback (and since the lease code is serialized by the kernel
	 * lock) we know the server hasn't removed the lease yet, we know
	 * it's safe to take a reference: */
	FUNC0(&dp->dl_count);

	FUNC5(&recall_lock);
	FUNC3(&dp->dl_recall_lru, &del_recall_lru);
	FUNC6(&recall_lock);

	/* only place dl_time is set. protected by lock_kernel*/
	dp->dl_time = FUNC2();

	/*
	 * We don't want the locks code to timeout the lease for us;
	 * we'll remove it ourself if the delegation isn't returned
	 * in time.
	 */
	fl->fl_break_time = 0;

	dp->dl_file->fi_had_conflict = true;
	FUNC4(dp);
}