
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct amfs_nfsx {int nx_c; TYPE_3__* nx_try; TYPE_3__* nx_v; int * nx_mp; } ;
typedef int opaque_t ;
struct TYPE_8__ {int mf_flags; int mf_fsflags; int mf_mount; TYPE_1__* mf_ops; int mf_info; scalar_t__ mf_private; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_9__ {int n_error; TYPE_2__* n_mnt; } ;
typedef TYPE_3__ amfs_nfsx_mnt ;
typedef int am_node ;
struct TYPE_7__ {int (* mount_fs ) (int *,TYPE_2__*) ;} ;


 int FALSE ;
 int FS_MBACKGROUND ;
 int FS_MKMNT ;
 int MFF_MKMNT ;
 int MFF_MOUNTED ;
 int MFF_MOUNTING ;
 int amfs_nfsx_cont ;
 int dlog (char*,int ,...) ;
 scalar_t__ foreground ;
 int mf_mounted (TYPE_2__*,int ) ;
 int mkdirs (int ,int) ;
 int run_task (int ,int ,int ,int ) ;
 int strerror (int) ;
 int stub1 (int *,TYPE_2__*) ;
 int try_amfs_nfsx_mount ;

__attribute__((used)) static int
amfs_nfsx_remount(am_node *am, mntfs *mf, int fg)
{
  struct amfs_nfsx *nx = (struct amfs_nfsx *) mf->mf_private;
  amfs_nfsx_mnt *n;
  int glob_error = -1;


  nx->nx_mp = am;





  for (n = nx->nx_v; n < nx->nx_v + nx->nx_c; n++) {
    mntfs *m = n->n_mnt;

    if (m->mf_flags & MFF_MOUNTING)
      break;

    if (m->mf_flags & MFF_MOUNTED) {
      mf_mounted(m, FALSE);
      n->n_error = glob_error = 0;
      continue;
    }

    if (n->n_error < 0) {

      if (!(m->mf_flags & MFF_MKMNT) && m->mf_fsflags & FS_MKMNT) {
 if (!mkdirs(m->mf_mount, 0555))
   m->mf_flags |= MFF_MKMNT;
      }

      dlog("calling underlying mount on %s", m->mf_mount);
      if (!fg && foreground && (m->mf_fsflags & FS_MBACKGROUND)) {
 m->mf_flags |= MFF_MOUNTING;
 dlog("backgrounding mount of \"%s\"", m->mf_info);
 nx->nx_try = n;
 run_task(try_amfs_nfsx_mount, (opaque_t) m, amfs_nfsx_cont, (opaque_t) mf);
 n->n_error = -1;
 return -1;
      } else {
 dlog("foreground mount of \"%s\" ...", mf->mf_info);
 n->n_error = m->mf_ops->mount_fs(am, m);
      }

      if (n->n_error > 0)
 dlog("underlying fmount of %s failed: %s", m->mf_mount, strerror(n->n_error));

      if (n->n_error == 0) {
 glob_error = 0;
      } else if (glob_error < 0) {
 glob_error = n->n_error;
      }
    }
  }

  return glob_error < 0 ? 0 : glob_error;
}
