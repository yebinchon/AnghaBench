
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct amfs_nfsx {int nx_c; TYPE_3__* nx_v; } ;
struct TYPE_10__ {int mf_fsflags; int mf_flags; int mf_mount; TYPE_1__* mf_ops; scalar_t__ mf_private; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_11__ {int n_error; TYPE_2__* n_mnt; } ;
typedef TYPE_3__ amfs_nfsx_mnt ;
typedef int am_node ;
struct TYPE_9__ {int (* umount_fs ) (int *,TYPE_2__*) ;int (* umounted ) (TYPE_2__*) ;} ;


 int EBUSY ;
 int FS_MKMNT ;
 int MFF_MKMNT ;
 int TRUE ;
 int XLOG_USER ;
 int amfs_nfsx_remount (int *,TYPE_2__*,int ) ;
 int dlog (char*,int ) ;
 int errno ;
 int free_mntfs (TYPE_2__*) ;
 int plog (int ,char*,int ) ;
 int rmdirs (int ) ;
 int stub1 (int *,TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static int
amfs_nfsx_umount(am_node *am, mntfs *mf)
{
  struct amfs_nfsx *nx = (struct amfs_nfsx *) mf->mf_private;
  amfs_nfsx_mnt *n;
  int glob_error = 0;





  for (n = nx->nx_v + nx->nx_c - 1; n >= nx->nx_v; --n) {
    mntfs *m = n->n_mnt;
    if (n->n_error == 0) {
      dlog("calling underlying fumount on %s", m->mf_mount);
      n->n_error = m->mf_ops->umount_fs(am, m);
      if (n->n_error) {
 glob_error = n->n_error;
 n->n_error = 0;
      } else {



 n->n_error = -1;
      }
    }
  }





  if (glob_error) {
    glob_error = amfs_nfsx_remount(am, mf, TRUE);
    if (glob_error) {
      errno = glob_error;
      plog(XLOG_USER, "amfs_nfsx: remount of %s failed: %m", mf->mf_mount);
    }
    glob_error = EBUSY;
  } else {



    for (n = nx->nx_v; n < nx->nx_v + nx->nx_c; n++) {
      mntfs *m = n->n_mnt;
      dlog("calling underlying umounted on %s", m->mf_mount);
      if (m->mf_ops->umounted)
 m->mf_ops->umounted(m);

      if (n->n_error < 0) {
 if (m->mf_fsflags & FS_MKMNT) {
   (void) rmdirs(m->mf_mount);
   m->mf_flags &= ~MFF_MKMNT;
 }
      }
      free_mntfs(m);
      n->n_mnt = ((void*)0);
      n->n_error = -1;
    }
  }

  return glob_error;
}
