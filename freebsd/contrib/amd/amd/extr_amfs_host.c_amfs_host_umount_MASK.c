#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* mnt; struct TYPE_9__* mnext; } ;
typedef  TYPE_2__ mntlist ;
struct TYPE_10__ {int mf_flags; int /*<<< orphan*/  mf_mount; } ;
typedef  TYPE_3__ mntfs ;
typedef  int /*<<< orphan*/  am_node ;
struct TYPE_8__ {char* mnt_dir; } ;

/* Variables and functions */
 int AMU_UMOUNT_AUTOFS ; 
 int EBUSY ; 
 int ENOENT ; 
 scalar_t__ Finishing ; 
 int MFF_ON_AUTOFS ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 scalar_t__ amd_state ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  mnttab_file_name ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int
FUNC9(am_node *am, mntfs *mf)
{
  mntlist *ml, *mprev;
  int unmount_flags = (mf->mf_flags & MFF_ON_AUTOFS) ? AMU_UMOUNT_AUTOFS : 0;
  int xerror = 0;

  /*
   * Read the mount list
   */
  mntlist *mlist = FUNC6(mf->mf_mount, mnttab_file_name);

#ifdef MOUNT_TABLE_ON_FILE
  /*
   * Unlock the mount list
   */
  unlock_mntlist();
#endif /* MOUNT_TABLE_ON_FILE */

  /*
   * Reverse list...
   */
  ml = mlist;
  mprev = NULL;
  while (ml) {
    mntlist *ml2 = ml->mnext;
    ml->mnext = mprev;
    mprev = ml;
    ml = ml2;
  }
  mlist = mprev;

  /*
   * Unmount all filesystems...
   */
  for (ml = mlist; ml && !xerror; ml = ml->mnext) {
    char *dir = ml->mnt->mnt_dir;
    if (FUNC2(mf->mf_mount, dir)) {
      int error;
      FUNC4("amfs_host: unmounts %s", dir);
      /*
       * Unmount "dir"
       */
      error = FUNC0(dir, mnttab_file_name, unmount_flags);
      /*
       * Keep track of errors
       */
      if (error) {
	/*
	 * If we have not already set xerror and error is not ENOENT,
	 * then set xerror equal to error and log it.
	 * 'xerror' is the return value for this function.
	 *
	 * We do not want to pass ENOENT as an error because if the
	 * directory does not exists our work is done anyway.
	 */
	if (!xerror && error != ENOENT)
	  xerror = error;
	if (error != EBUSY) {
	  errno = error;
	  FUNC5(XLOG_ERROR, "Tree unmount of %s failed: %m", ml->mnt->mnt_dir);
	}
      } else {
	(void) FUNC7(dir);
      }
    }
  }

  /*
   * Throw away mount list
   */
  FUNC3(mlist);

  /*
   * Try to remount, except when we are shutting down.
   */
  if (xerror && amd_state != Finishing) {
    xerror = FUNC1(am, mf);
    if (!xerror) {
      /*
       * Don't log this - it's usually too verbose
       plog(XLOG_INFO, "Remounted host %s", mf->mf_info);
       */
      xerror = EBUSY;
    }
  }
  return xerror;
}