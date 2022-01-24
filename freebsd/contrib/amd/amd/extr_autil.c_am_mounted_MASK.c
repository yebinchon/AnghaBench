#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_22__ ;
typedef  struct TYPE_27__   TYPE_21__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_17__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
struct TYPE_35__ {int mf_flags; int mf_fsflags; char* mf_mount; TYPE_21__* mf_ops; scalar_t__ mf_mopts; } ;
typedef  TYPE_8__ mntfs ;
struct TYPE_36__ {scalar_t__ mnt_opts; } ;
typedef  TYPE_9__ mntent_t ;
struct TYPE_34__ {scalar_t__ na_type; int /*<<< orphan*/  na_mtime; int /*<<< orphan*/  na_size; } ;
struct TYPE_29__ {int /*<<< orphan*/  s_mtime; } ;
struct TYPE_24__ {int am_flags; char* am_link; TYPE_7__ am_fattr; TYPE_6__* am_parent; TYPE_2__ am_stats; int /*<<< orphan*/  am_timeo; int /*<<< orphan*/  am_path; TYPE_1__* am_al; } ;
typedef  TYPE_10__ am_node ;
struct TYPE_32__ {int /*<<< orphan*/  na_mtime; } ;
struct TYPE_33__ {TYPE_5__ am_fattr; TYPE_4__* am_al; int /*<<< orphan*/  am_path; } ;
struct TYPE_31__ {TYPE_3__* al_mnt; } ;
struct TYPE_30__ {int mf_fsflags; } ;
struct TYPE_28__ {int /*<<< orphan*/  d_mok; } ;
struct TYPE_27__ {int /*<<< orphan*/  (* mount_fs ) (TYPE_10__*,TYPE_8__*) ;} ;
struct TYPE_26__ {TYPE_8__* al_mnt; } ;
struct TYPE_25__ {int /*<<< orphan*/  am_timeo; } ;

/* Variables and functions */
 int AMF_AUTOFS ; 
 int AMF_NOTIMEOUT ; 
 int FS_DIRECT ; 
 int FS_NOTIMEOUT ; 
 int MFF_IS_AUTOFS ; 
 scalar_t__ NFLNK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 TYPE_22__ amd_stats ; 
 TYPE_21__ amfs_link_ops ; 
 scalar_t__ FUNC0 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_17__ gopt ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_10__*,TYPE_8__*) ; 

void
FUNC12(am_node *mp)
{
  int notimeout = 0;		/* assume normal timeouts initially */
  mntfs *mf = mp->am_al->al_mnt;

  /*
   * This is the parent mntfs which does the mf->mf_fo (am_opts type), and
   * we're passing TRUE here to tell mf_mounted to actually free the
   * am_opts.  See a related comment in mf_mounted().
   */
  FUNC5(mf, TRUE);

#ifdef HAVE_FS_AUTOFS
  if (mf->mf_flags & MFF_IS_AUTOFS)
    autofs_mounted(mp);
#endif /* HAVE_FS_AUTOFS */

  /*
   * Patch up path for direct mounts
   */
  if (mp->am_parent && mp->am_parent->am_al->al_mnt->mf_fsflags & FS_DIRECT)
    mp->am_path = FUNC9(mp->am_path, mp->am_parent->am_path, "/", ".");

  /*
   * Check whether this mount should be cached permanently or not,
   * and handle user-requested timeouts.
   */
  /* first check if file system was set to never timeout */
  if (mf->mf_fsflags & FS_NOTIMEOUT)
    notimeout = 1;
  /* next, alter that decision by map flags */

  if (mf->mf_mopts) {
    mntent_t mnt;
    mnt.mnt_opts = mf->mf_mopts;

    /* umount option: user wants to unmount this entry */
    if (FUNC0(&mnt, "unmount") || FUNC0(&mnt, "umount"))
      notimeout = 0;
    /* noumount option: user does NOT want to unmount this entry */
    if (FUNC0(&mnt, "nounmount") || FUNC0(&mnt, "noumount"))
      notimeout = 1;
    /* utimeout=N option: user wants to unmount this option AND set timeout */
    if ((mp->am_timeo = FUNC4(&mnt, "utimeout")) == 0)
      mp->am_timeo = gopt.am_timeo; /* otherwise use default timeout */
    else
      notimeout = 0;
    /* special case: don't try to unmount "/" (it can never succeed) */
    if (mf->mf_mount[0] == '/' && mf->mf_mount[1] == '\0')
      notimeout = 1;
  }
  /* finally set actual flags */
  if (notimeout) {
    mp->am_flags |= AMF_NOTIMEOUT;
    FUNC8(XLOG_INFO, "%s set to never timeout", mp->am_path);
  } else {
    mp->am_flags &= ~AMF_NOTIMEOUT;
    FUNC8(XLOG_INFO, "%s set to timeout in %d seconds", mp->am_path, mp->am_timeo);
  }

  /*
   * If this node is a symlink then
   * compute the length of the returned string.
   */
  if (mp->am_fattr.na_type == NFLNK)
    mp->am_fattr.na_size = FUNC10(mp->am_link ? mp->am_link : mf->mf_mount);

  /*
   * Record mount time, and update am_stats at the same time.
   */
  mp->am_stats.s_mtime = FUNC3(&mp->am_fattr.na_mtime);
  FUNC6(mp);

  /*
   * Update mtime of parent node (copying "struct nfstime" in '=' below)
   */
  if (mp->am_parent && mp->am_parent->am_al->al_mnt)
    mp->am_parent->am_fattr.na_mtime = mp->am_fattr.na_mtime;

  /*
   * This is ugly, but essentially unavoidable
   * Sublinks must be treated separately as type==link
   * when the base type is different.
   */
  if (mp->am_link && mf->mf_ops != &amfs_link_ops)
    amfs_link_ops.mount_fs(mp, mf);

  /*
   * Now, if we can, do a reply to our client here
   * to speed things up.
   */
#ifdef HAVE_FS_AUTOFS
  if (mp->am_flags & AMF_AUTOFS)
    autofs_mount_succeeded(mp);
  else
#endif /* HAVE_FS_AUTOFS */
    FUNC7(mp, 0);

  /*
   * Update stats
   */
  amd_stats.d_mok++;
}