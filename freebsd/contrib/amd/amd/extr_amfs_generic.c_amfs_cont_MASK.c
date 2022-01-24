#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct continuation {TYPE_5__* mp; int /*<<< orphan*/  al; } ;
typedef  scalar_t__ opaque_t ;
struct TYPE_16__ {int mf_flags; int mf_error; TYPE_2__* mf_ops; TYPE_1__* mf_server; } ;
typedef  TYPE_4__ mntfs ;
struct TYPE_17__ {scalar_t__ am_error; int /*<<< orphan*/  am_path; TYPE_3__* am_al; } ;
typedef  TYPE_5__ am_node ;
struct TYPE_15__ {TYPE_4__* al_mnt; } ;
struct TYPE_14__ {int /*<<< orphan*/  fs_type; } ;
struct TYPE_13__ {int fs_version; int /*<<< orphan*/  fs_proto; } ;
struct TYPE_12__ {int /*<<< orphan*/  d_merr; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int MFF_ERROR ; 
 int MFF_IS_AUTOFS ; 
 int MFF_MOUNTED ; 
 int MFF_MOUNTING ; 
 int MFF_NFS_SCALEDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 TYPE_10__ amd_stats ; 
 int /*<<< orphan*/  FUNC2 (struct continuation*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (struct continuation*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(int rc, int term, opaque_t arg)
{
  struct continuation *cp = (struct continuation *) arg;
  am_node *mp = cp->mp;
  mntfs *mf = mp->am_al->al_mnt;

  FUNC5("amfs_cont: '%s'", mp->am_path);

  /*
   * Definitely not trying to mount at the moment
   */
  mf->mf_flags &= ~MFF_MOUNTING;

  /*
   * While we are mounting - try to avoid race conditions
   */
  FUNC8(mp);

  /*
   * Wakeup anything waiting for this mount
   */
  FUNC11(FUNC7(mf));

  /*
   * Check for termination signal or exit status...
   */
  if (rc || term) {
#ifdef HAVE_FS_AUTOFS
    if (mf->mf_flags & MFF_IS_AUTOFS &&
	!(mf->mf_flags & MFF_MOUNTED))
      autofs_release_fh(mp);
#endif /* HAVE_FS_AUTOFS */

    if (term) {
      /*
       * Not sure what to do for an error code.
       */
      mf->mf_error = EIO;	/* XXX ? */
      mf->mf_flags |= MFF_ERROR;
      FUNC9(XLOG_ERROR, "mount for %s got signal %d", mp->am_path, term);
    } else {
      /*
       * Check for exit status...
       */
#ifdef __linux__
      /*
       * HACK ALERT!
       *
       * On Linux (and maybe not only) it's possible to run
       * an amd which "knows" how to mount certain combinations
       * of nfs_proto/nfs_version which the kernel doesn't grok.
       * So if we got an EINVAL and we have a server that's not
       * using NFSv2/UDP, try again with NFSv2/UDP.
       *
       * Too bad that there is no way to dynamically determine
       * what combinations the _client_ supports, as opposed to
       * what the _server_ supports...
       */
      if (rc == EINVAL &&
	  mf->mf_server &&
	  (mf->mf_server->fs_version != 2 ||
	   !FUNC0(mf->mf_server->fs_proto, "udp")))
	mf->mf_flags |= MFF_NFS_SCALEDOWN;
      else
#endif /* __linux__ */
      {
	mf->mf_error = rc;
	mf->mf_flags |= MFF_ERROR;
	errno = rc;		/* XXX */
	if (!FUNC0(mp->am_al->al_mnt->mf_ops->fs_type, "linkx"))
	  FUNC9(XLOG_ERROR, "%s: mount (amfs_cont): %m", mp->am_path);
      }
    }

    if (!(mf->mf_flags & MFF_NFS_SCALEDOWN)) {
      /*
       * If we get here then that attempt didn't work, so
       * move the info vector pointer along by one and
       * call the background mount routine again
       */
      amd_stats.d_merr++;
      cp->al++;
    }
    FUNC2(cp);
    if (mp->am_error > 0)
      FUNC3(mp);
  } else {
    /*
     * The mount worked.
     */
    FUNC5("Mounting %s returned success", cp->mp->am_path);
    FUNC1(cp->mp);
    FUNC6(cp);
  }

  FUNC10();
}