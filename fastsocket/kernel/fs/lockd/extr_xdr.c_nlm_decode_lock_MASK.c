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
struct file_lock {void* fl_end; void* fl_start; int /*<<< orphan*/  fl_type; int /*<<< orphan*/  fl_flags; scalar_t__ fl_pid; int /*<<< orphan*/  fl_owner; } ;
struct nlm_lock {void* svid; int /*<<< orphan*/  oh; int /*<<< orphan*/  fh; int /*<<< orphan*/  len; int /*<<< orphan*/  caller; struct file_lock fl; } ;
typedef  scalar_t__ s32 ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FL_POSIX ; 
 int /*<<< orphan*/  F_RDLCK ; 
 int /*<<< orphan*/  NLM_MAXSTRLEN ; 
 void* OFFSET_MAX ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *
FUNC6(__be32 *p, struct nlm_lock *lock)
{
	struct file_lock	*fl = &lock->fl;
	s32			start, len, end;

	if (!(p = FUNC5(p, &lock->caller,
					    &lock->len,
					    NLM_MAXSTRLEN))
	 || !(p = FUNC1(p, &lock->fh))
	 || !(p = FUNC2(p, &lock->oh)))
		return NULL;
	lock->svid  = FUNC3(*p++);

	FUNC0(fl);
	fl->fl_owner = current->files;
	fl->fl_pid   = (pid_t)lock->svid;
	fl->fl_flags = FL_POSIX;
	fl->fl_type  = F_RDLCK;		/* as good as anything else */
	start = FUNC3(*p++);
	len = FUNC3(*p++);
	end = start + len - 1;

	fl->fl_start = FUNC4(start);

	if (len == 0 || end < 0)
		fl->fl_end = OFFSET_MAX;
	else
		fl->fl_end = FUNC4(end);
	return p;
}