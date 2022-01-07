
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct continuation {TYPE_5__* mp; int al; } ;
typedef scalar_t__ opaque_t ;
struct TYPE_16__ {int mf_flags; int mf_error; TYPE_2__* mf_ops; TYPE_1__* mf_server; } ;
typedef TYPE_4__ mntfs ;
struct TYPE_17__ {scalar_t__ am_error; int am_path; TYPE_3__* am_al; } ;
typedef TYPE_5__ am_node ;
struct TYPE_15__ {TYPE_4__* al_mnt; } ;
struct TYPE_14__ {int fs_type; } ;
struct TYPE_13__ {int fs_version; int fs_proto; } ;
struct TYPE_12__ {int d_merr; } ;


 int EINVAL ;
 int EIO ;
 int MFF_ERROR ;
 int MFF_IS_AUTOFS ;
 int MFF_MOUNTED ;
 int MFF_MOUNTING ;
 int MFF_NFS_SCALEDOWN ;
 int STREQ (int ,char*) ;
 int XLOG_ERROR ;
 int am_mounted (TYPE_5__*) ;
 TYPE_10__ amd_stats ;
 int amfs_bgmount (struct continuation*) ;
 int assign_error_mntfs (TYPE_5__*) ;
 int autofs_release_fh (TYPE_5__*) ;
 int dlog (char*,int ) ;
 int errno ;
 int free_continuation (struct continuation*) ;
 int get_mntfs_wchan (TYPE_4__*) ;
 int new_ttl (TYPE_5__*) ;
 int plog (int ,char*,int ,...) ;
 int reschedule_timeout_mp () ;
 int wakeup (int ) ;

__attribute__((used)) static void
amfs_cont(int rc, int term, opaque_t arg)
{
  struct continuation *cp = (struct continuation *) arg;
  am_node *mp = cp->mp;
  mntfs *mf = mp->am_al->al_mnt;

  dlog("amfs_cont: '%s'", mp->am_path);




  mf->mf_flags &= ~MFF_MOUNTING;




  new_ttl(mp);




  wakeup(get_mntfs_wchan(mf));




  if (rc || term) {






    if (term) {



      mf->mf_error = EIO;
      mf->mf_flags |= MFF_ERROR;
      plog(XLOG_ERROR, "mount for %s got signal %d", mp->am_path, term);
    } else {
      if (rc == EINVAL &&
   mf->mf_server &&
   (mf->mf_server->fs_version != 2 ||
    !STREQ(mf->mf_server->fs_proto, "udp")))
 mf->mf_flags |= MFF_NFS_SCALEDOWN;
      else

      {
 mf->mf_error = rc;
 mf->mf_flags |= MFF_ERROR;
 errno = rc;
 if (!STREQ(mp->am_al->al_mnt->mf_ops->fs_type, "linkx"))
   plog(XLOG_ERROR, "%s: mount (amfs_cont): %m", mp->am_path);
      }
    }

    if (!(mf->mf_flags & MFF_NFS_SCALEDOWN)) {





      amd_stats.d_merr++;
      cp->al++;
    }
    amfs_bgmount(cp);
    if (mp->am_error > 0)
      assign_error_mntfs(mp);
  } else {



    dlog("Mounting %s returned success", cp->mp->am_path);
    am_mounted(cp->mp);
    free_continuation(cp);
  }

  reschedule_timeout_mp();
}
