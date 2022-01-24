#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct amfs_nfsx {TYPE_2__* nx_try; int /*<<< orphan*/ * nx_mp; } ;
typedef  scalar_t__ opaque_t ;
struct TYPE_8__ {int mf_flags; int mf_error; int /*<<< orphan*/  mf_mount; scalar_t__ mf_private; } ;
typedef  TYPE_1__ mntfs ;
struct TYPE_9__ {int n_error; TYPE_1__* n_mnt; } ;
typedef  TYPE_2__ amfs_nfsx_mnt ;
typedef  int /*<<< orphan*/  am_node ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FALSE ; 
 int MFF_ERROR ; 
 int MFF_MOUNTING ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(int rc, int term, opaque_t arg)
{
  mntfs *mf = (mntfs *) arg;
  struct amfs_nfsx *nx = (struct amfs_nfsx *) mf->mf_private;
  am_node *mp = nx->nx_mp;
  amfs_nfsx_mnt *n = nx->nx_try;

  n->n_mnt->mf_flags &= ~(MFF_ERROR | MFF_MOUNTING);
  mf->mf_flags &= ~MFF_ERROR;

  /*
   * Wakeup anything waiting for this mount
   */
  FUNC6(FUNC2(n->n_mnt));

  if (rc || term) {
    if (term) {
      /*
       * Not sure what to do for an error code.
       */
      FUNC5(XLOG_ERROR, "mount for %s got signal %d", n->n_mnt->mf_mount, term);
      n->n_error = EIO;
    } else {
      /*
       * Check for exit status
       */
      errno = rc;		/* XXX */
      FUNC5(XLOG_ERROR, "%s: mount (amfs_nfsx_cont): %m", n->n_mnt->mf_mount);
      n->n_error = rc;
    }
    FUNC1(n->n_mnt);
    n->n_mnt = FUNC4();
    n->n_mnt->mf_error = n->n_error;
    n->n_mnt->mf_flags |= MFF_ERROR;
  } else {
    /*
     * The mount worked.
     */
    FUNC3(n->n_mnt, FALSE); /* FALSE => don't free the n_mnt->am_opts */
    n->n_error = 0;
  }

  /*
   * Do the remaining bits
   */
  if (FUNC0(mp, mf) >= 0)
    FUNC6(FUNC2(mf));
}