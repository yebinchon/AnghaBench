
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct amfs_nfsx {TYPE_2__* nx_try; int * nx_mp; } ;
typedef scalar_t__ opaque_t ;
struct TYPE_8__ {int mf_flags; int mf_error; int mf_mount; scalar_t__ mf_private; } ;
typedef TYPE_1__ mntfs ;
struct TYPE_9__ {int n_error; TYPE_1__* n_mnt; } ;
typedef TYPE_2__ amfs_nfsx_mnt ;
typedef int am_node ;


 int EIO ;
 int FALSE ;
 int MFF_ERROR ;
 int MFF_MOUNTING ;
 int XLOG_ERROR ;
 scalar_t__ amfs_nfsx_mount (int *,TYPE_1__*) ;
 int errno ;
 int free_mntfs (TYPE_1__*) ;
 int get_mntfs_wchan (TYPE_1__*) ;
 int mf_mounted (TYPE_1__*,int ) ;
 TYPE_1__* new_mntfs () ;
 int plog (int ,char*,int ,...) ;
 int wakeup (int ) ;

__attribute__((used)) static void
amfs_nfsx_cont(int rc, int term, opaque_t arg)
{
  mntfs *mf = (mntfs *) arg;
  struct amfs_nfsx *nx = (struct amfs_nfsx *) mf->mf_private;
  am_node *mp = nx->nx_mp;
  amfs_nfsx_mnt *n = nx->nx_try;

  n->n_mnt->mf_flags &= ~(MFF_ERROR | MFF_MOUNTING);
  mf->mf_flags &= ~MFF_ERROR;




  wakeup(get_mntfs_wchan(n->n_mnt));

  if (rc || term) {
    if (term) {



      plog(XLOG_ERROR, "mount for %s got signal %d", n->n_mnt->mf_mount, term);
      n->n_error = EIO;
    } else {



      errno = rc;
      plog(XLOG_ERROR, "%s: mount (amfs_nfsx_cont): %m", n->n_mnt->mf_mount);
      n->n_error = rc;
    }
    free_mntfs(n->n_mnt);
    n->n_mnt = new_mntfs();
    n->n_mnt->mf_error = n->n_error;
    n->n_mnt->mf_flags |= MFF_ERROR;
  } else {



    mf_mounted(n->n_mnt, FALSE);
    n->n_error = 0;
  }




  if (amfs_nfsx_mount(mp, mf) >= 0)
    wakeup(get_mntfs_wchan(mf));
}
