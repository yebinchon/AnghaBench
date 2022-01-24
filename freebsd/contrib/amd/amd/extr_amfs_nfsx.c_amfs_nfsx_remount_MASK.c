#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct amfs_nfsx {int nx_c; TYPE_3__* nx_try; TYPE_3__* nx_v; int /*<<< orphan*/ * nx_mp; } ;
typedef  int /*<<< orphan*/  opaque_t ;
struct TYPE_8__ {int mf_flags; int mf_fsflags; int /*<<< orphan*/  mf_mount; TYPE_1__* mf_ops; int /*<<< orphan*/  mf_info; scalar_t__ mf_private; } ;
typedef  TYPE_2__ mntfs ;
struct TYPE_9__ {int n_error; TYPE_2__* n_mnt; } ;
typedef  TYPE_3__ amfs_nfsx_mnt ;
typedef  int /*<<< orphan*/  am_node ;
struct TYPE_7__ {int (* mount_fs ) (int /*<<< orphan*/ *,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FS_MBACKGROUND ; 
 int FS_MKMNT ; 
 int MFF_MKMNT ; 
 int MFF_MOUNTED ; 
 int MFF_MOUNTING ; 
 int /*<<< orphan*/  amfs_nfsx_cont ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ foreground ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  try_amfs_nfsx_mount ; 

__attribute__((used)) static int
FUNC6(am_node *am, mntfs *mf, int fg)
{
  struct amfs_nfsx *nx = (struct amfs_nfsx *) mf->mf_private;
  amfs_nfsx_mnt *n;
  int glob_error = -1;

  /* Save the am_node pointer for later use */
  nx->nx_mp = am;

  /*
   * Iterate through the mntfs's and mount each filesystem
   * which is not yet mounted.
   */
  for (n = nx->nx_v; n < nx->nx_v + nx->nx_c; n++) {
    mntfs *m = n->n_mnt;

    if (m->mf_flags & MFF_MOUNTING)
      break;

    if (m->mf_flags & MFF_MOUNTED) {
      FUNC1(m, FALSE);	/* FALSE => don't free the m->am_opts */
      n->n_error = glob_error = 0;
      continue;
    }

    if (n->n_error < 0) {
      /* Create the mountpoint, if and as required */
      if (!(m->mf_flags & MFF_MKMNT) && m->mf_fsflags & FS_MKMNT) {
	if (!FUNC2(m->mf_mount, 0555))
	  m->mf_flags |= MFF_MKMNT;
      }

      FUNC0("calling underlying mount on %s", m->mf_mount);
      if (!fg && foreground && (m->mf_fsflags & FS_MBACKGROUND)) {
	m->mf_flags |= MFF_MOUNTING;
	FUNC0("backgrounding mount of \"%s\"", m->mf_info);
	nx->nx_try = n;
	FUNC3(try_amfs_nfsx_mount, (opaque_t) m, amfs_nfsx_cont, (opaque_t) mf);
	n->n_error = -1;
	return -1;
      } else {
	FUNC0("foreground mount of \"%s\" ...", mf->mf_info);
	n->n_error = m->mf_ops->mount_fs(am, m);
      }

      if (n->n_error > 0)
	FUNC0("underlying fmount of %s failed: %s", m->mf_mount, FUNC4(n->n_error));

      if (n->n_error == 0) {
	glob_error = 0;
      } else if (glob_error < 0) {
	glob_error = n->n_error;
      }
    }
  }

  return glob_error < 0 ? 0 : glob_error;
}