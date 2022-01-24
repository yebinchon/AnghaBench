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
struct nfs4_delegation {int /*<<< orphan*/ * dl_flock; int /*<<< orphan*/  dl_count; } ;
struct file_lock {int fl_flags; scalar_t__ fl_owner; } ;

/* Variables and functions */
 int FL_LEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct file_lock*,struct nfs4_delegation*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC2(struct file_lock *fl)
{
	struct nfs4_delegation *dp = (struct nfs4_delegation *)fl->fl_owner;

	FUNC1("NFSD nfsd_release_deleg_cb: fl %p dp %p dl_count %d\n", fl,dp, FUNC0(&dp->dl_count));

	if (!(fl->fl_flags & FL_LEASE) || !dp)
		return;
	dp->dl_flock = NULL;
}