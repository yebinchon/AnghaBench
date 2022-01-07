
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


struct TYPE_20__ {int mf_flags; int mf_refc; char* mf_mount; TYPE_15__* mf_ops; } ;
typedef TYPE_3__ mntfs ;
struct TYPE_18__ {scalar_t__ na_type; int na_mtime; int na_nlink; } ;
struct TYPE_21__ {char* am_name; int am_flags; int* am_fd; int am_alarray; TYPE_2__* am_al; struct TYPE_21__* am_parent; TYPE_1__ am_fattr; scalar_t__ am_link; } ;
typedef TYPE_4__ am_node ;
struct TYPE_19__ {TYPE_3__* al_mnt; } ;
struct TYPE_17__ {int (* mount_child ) (TYPE_4__*,int*) ;TYPE_4__* (* lookup_child ) (TYPE_4__*,char*,int*,int ) ;int (* umount_fs ) (TYPE_4__*,TYPE_3__*) ;int (* umounted ) (TYPE_3__*) ;} ;


 int AMF_AUTOFS ;
 int AMF_REMOUNT ;
 int AMQ_UMNT_FAILED ;
 int AMQ_UMNT_OK ;
 int EBUSY ;
 int MFF_IS_AUTOFS ;
 int MFF_MKMNT ;
 scalar_t__ NFDIR ;
 int VLOOK_CREATE ;
 int XFREE (char*) ;
 int XLOG_ERROR ;
 int XLOG_FATAL ;
 int XLOG_INFO ;
 TYPE_15__ amfs_link_ops ;
 int autofs_release_fh (TYPE_4__*) ;
 int autofs_umount_succeeded (TYPE_4__*) ;
 int clocktime (int *) ;
 int errno ;
 int foreground ;
 int free_map (TYPE_4__*) ;
 int notify_child (TYPE_4__*,int ,int ,int ) ;
 int plog (int ,char*,char*) ;
 int rmdirs (char*) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_4__*,TYPE_3__*) ;
 TYPE_4__* stub3 (TYPE_4__*,char*,int*,int ) ;
 int stub4 (TYPE_4__*,int*) ;
 char* xstrdup (char*) ;

void
am_unmounted(am_node *mp)
{
  mntfs *mf = mp->am_al->al_mnt;

  if (!foreground) {



    plog(XLOG_FATAL, "am_unmounted: illegal use in background (%s)",
 mp->am_name);
    notify_child(mp, AMQ_UMNT_OK, 0, 0);
    return;
  }




  if (mf->mf_ops->umounted)
    mf->mf_ops->umounted(mf);






  if (mp->am_link && mf->mf_ops != &amfs_link_ops)
    amfs_link_ops.umount_fs(mp, mf);
  if (mf->mf_flags & MFF_MKMNT &&
      mf->mf_refc == 1 &&
      !(mp->am_flags & AMF_REMOUNT)) {
    plog(XLOG_INFO, "removing mountpoint directory '%s'", mf->mf_mount);
    rmdirs(mf->mf_mount);
    mf->mf_flags &= ~MFF_MKMNT;
  }





  if (mp->am_parent && mp->am_fattr.na_type == NFDIR)
    --mp->am_parent->am_fattr.na_nlink;




  if (mp->am_parent && mp->am_parent->am_al->al_mnt)
    clocktime(&mp->am_parent->am_fattr.na_mtime);

  if (mp->am_parent && (mp->am_flags & AMF_REMOUNT)) {
    char *fname = xstrdup(mp->am_name);
    am_node *mp_parent = mp->am_parent;
    mntfs *mf_parent = mp_parent->am_al->al_mnt;
    am_node fake_mp;
    int error = 0;





    fake_mp.am_fd[1] = mp->am_fd[1];
    mp->am_fd[1] = -1;

    free_map(mp);
    plog(XLOG_INFO, "am_unmounted: remounting %s", fname);
    mp = mf_parent->mf_ops->lookup_child(mp_parent, fname, &error, VLOOK_CREATE);
    if (mp && error < 0)
      (void)mf_parent->mf_ops->mount_child(mp, &error);
    if (error > 0) {
      errno = error;
      plog(XLOG_ERROR, "am_unmounted: could not remount %s: %m", fname);
      notify_child(&fake_mp, AMQ_UMNT_OK, 0, 0);
    } else {
      notify_child(&fake_mp, AMQ_UMNT_FAILED, EBUSY, 0);
    }
    XFREE(fname);
  } else {
    notify_child(mp, AMQ_UMNT_OK, 0, 0);
    if (!mp->am_alarray)
      free_map(mp);
  }
}
