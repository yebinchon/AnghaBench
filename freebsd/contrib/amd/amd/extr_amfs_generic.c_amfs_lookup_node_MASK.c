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
struct TYPE_9__ {int mf_fsflags; int mf_error; int mf_flags; int /*<<< orphan*/  mf_mount; } ;
typedef  TYPE_2__ mntfs ;
struct TYPE_10__ {int am_error; int /*<<< orphan*/  am_path; int /*<<< orphan*/  am_flags; TYPE_1__* am_al; int /*<<< orphan*/  am_name; struct TYPE_10__* am_osib; struct TYPE_10__* am_child; struct TYPE_10__* am_parent; } ;
typedef  TYPE_3__ am_node ;
struct TYPE_8__ {TYPE_2__* al_mnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMF_REMOUNT ; 
 int ENOENT ; 
 int ENOSPC ; 
 int ESTALE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FS_DIRECT ; 
 scalar_t__ Finishing ; 
 int MFF_ERROR ; 
 int MFF_MOUNTED ; 
 int MFF_UNMOUNTING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  XLOG_WARNING ; 
 scalar_t__ amd_state ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (char*) ; 
 TYPE_3__* FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static am_node *
FUNC9(am_node *mp, char *fname, int *error_return)
{
  am_node *new_mp;
  int error = 0;		/* Error so far */
  int in_progress = 0;		/* # of (un)mount in progress */
  mntfs *mf;
  char *expanded_fname = NULL;

  FUNC2("in amfs_lookup_node");

  /*
   * If the server is shutting down
   * then don't return information
   * about the mount point.
   */
  if (amd_state == Finishing) {
    if (mp->am_al == NULL || mp->am_al->al_mnt == NULL || mp->am_al->al_mnt->mf_fsflags & FS_DIRECT) {
      FUNC2("%s mount ignored - going down", fname);
    } else {
      FUNC2("%s/%s mount ignored - going down", mp->am_path, fname);
    }
    FUNC3(ENOENT);
  }

  /*
   * Handle special case of "." and ".."
   */
  if (fname[0] == '.') {
    if (fname[1] == '\0')
      return mp;		/* "." is the current node */
    if (fname[1] == '.' && fname[2] == '\0') {
      if (mp->am_parent) {
	FUNC2(".. in %s gives %s", mp->am_path, mp->am_parent->am_path);
	return mp->am_parent;	/* ".." is the parent node */
      }
      FUNC3(ESTALE);
    }
  }

  /*
   * Check for valid key name.
   * If it is invalid then pretend it doesn't exist.
   */
  if (!FUNC8(fname)) {
    FUNC6(XLOG_WARNING, "Key \"%s\" contains a disallowed character", fname);
    FUNC3(ENOENT);
  }

  /*
   * Expand key name.
   * expanded_fname is now a private copy.
   */
  expanded_fname = FUNC4(fname);

  /*
   * Search children of this node
   */
  for (new_mp = mp->am_child; new_mp; new_mp = new_mp->am_osib) {
    if (FUNC0(new_mp->am_name, expanded_fname)) {
      if (new_mp->am_error) {
	error = new_mp->am_error;
	continue;
      }

      /*
       * If the error code is undefined then it must be
       * in progress.
       */
      mf = new_mp->am_al->al_mnt;
      if (mf->mf_error < 0)
	goto in_progrss;

      /*
       * If there was a previous error with this node
       * then return that error code.
       */
      if (mf->mf_flags & MFF_ERROR) {
	error = mf->mf_error;
	continue;
      }
      if (!(mf->mf_flags & MFF_MOUNTED) || (mf->mf_flags & MFF_UNMOUNTING)) {
      in_progrss:
	/*
	 * If the fs is not mounted or it is unmounting then there
	 * is a background (un)mount in progress.  In this case
	 * we just drop the RPC request (return nil) and
	 * wait for a retry, by which time the (un)mount may
	 * have completed.
	 */
	FUNC2("ignoring mount of %s in %s -- %smounting in progress, flags %x",
	     expanded_fname, mf->mf_mount,
	     (mf->mf_flags & MFF_UNMOUNTING) ? "un" : "", mf->mf_flags);
	in_progress++;
	if (mf->mf_flags & MFF_UNMOUNTING) {
	  FUNC2("will remount later");
	  new_mp->am_flags |= AMF_REMOUNT;
	}
	continue;
      }

      /*
       * Otherwise we have a hit: return the current mount point.
       */
      FUNC2("matched %s in %s", expanded_fname, new_mp->am_path);
      FUNC1(expanded_fname);
      return new_mp;
    }
  }

  if (in_progress) {
    FUNC2("Waiting while %d mount(s) in progress", in_progress);
    FUNC1(expanded_fname);
    FUNC3(-1);
  }

  /*
   * If an error occurred then return it.
   */
  if (error) {
    FUNC2("Returning error: %s", FUNC7(error));
    FUNC1(expanded_fname);
    FUNC3(error);
  }

  /*
   * If the server is going down then just return,
   * don't try to mount any more file systems
   */
  if ((int) amd_state >= (int) Finishing) {
    FUNC2("not found - server going down anyway");
    FUNC3(ENOENT);
  }

  /*
   * Allocate a new map
   */
  new_mp = FUNC5(mp, expanded_fname);
  FUNC1(expanded_fname);
  if (new_mp == NULL)
    FUNC3(ENOSPC);

  *error_return = -1;
  return new_mp;
}