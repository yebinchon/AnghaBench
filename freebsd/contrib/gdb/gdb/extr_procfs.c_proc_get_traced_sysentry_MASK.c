#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sysset_t ;
struct TYPE_9__ {scalar_t__ pr_sysentry_offset; int /*<<< orphan*/  pr_sysentry; } ;
struct TYPE_10__ {scalar_t__ tid; scalar_t__ status_fd; int /*<<< orphan*/  ctl_fd; TYPE_1__ prstatus; int /*<<< orphan*/  status_valid; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ procinfo ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FD_STATUS ; 
 int /*<<< orphan*/  PIOCGENTRY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*) ; 
 size_t FUNC9 (TYPE_2__*) ; 

sysset_t *
FUNC10 (procinfo *pi, sysset_t *save)
{
  sysset_t *ret = NULL;

  /*
   * We should never have to apply this operation to any procinfo
   * except the one for the main process.  If that ever changes
   * for any reason, then take out the following clause and
   * replace it with one that makes sure the ctl_fd is open.
   */

  if (pi->tid != 0)
    pi = FUNC0 (pi->pid, 0);

#ifdef NEW_PROC_API
  if (!pi->status_valid)
    if (!proc_get_status (pi))
      return NULL;

#ifndef DYNAMIC_SYSCALLS
  ret = &pi->prstatus.pr_sysentry;
#else /* DYNAMIC_SYSCALLS */
  {
    static sysset_t *sysentry;
    size_t size;

    if (!sysentry)
      sysentry = sysset_t_alloc (pi);
    ret = sysentry;
    if (pi->status_fd == 0 && open_procinfo_files (pi, FD_STATUS) == 0)
      return NULL;
    if (pi->prstatus.pr_sysentry_offset == 0)
      {
	gdb_premptysysset (sysentry);
      }
    else
      {
	int rsize;

	if (lseek (pi->status_fd, (off_t) pi->prstatus.pr_sysentry_offset,
	           SEEK_SET)
	    != (off_t) pi->prstatus.pr_sysentry_offset)
	  return NULL;
	size = sysset_t_size (pi);
	gdb_premptysysset (sysentry);
	rsize = read (pi->status_fd, sysentry, size);
	if (rsize < 0)
	  return NULL;
      }
  }
#endif /* DYNAMIC_SYSCALLS */
#else /* !NEW_PROC_API */
  {
    static sysset_t sysentry;

    if (FUNC2 (pi->ctl_fd, PIOCGENTRY, &sysentry) >= 0)
      ret = &sysentry;
  }
#endif /* NEW_PROC_API */
  if (save && ret)
    FUNC4 (save, ret, FUNC9 (pi));

  return ret;
}