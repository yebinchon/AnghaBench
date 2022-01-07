
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* mnt; struct TYPE_9__* mnext; } ;
typedef TYPE_2__ mntlist ;
struct TYPE_10__ {int mf_flags; int mf_mount; } ;
typedef TYPE_3__ mntfs ;
typedef int am_node ;
struct TYPE_8__ {char* mnt_dir; } ;


 int AMU_UMOUNT_AUTOFS ;
 int EBUSY ;
 int ENOENT ;
 scalar_t__ Finishing ;
 int MFF_ON_AUTOFS ;
 int UMOUNT_FS (char*,int ,int) ;
 int XLOG_ERROR ;
 scalar_t__ amd_state ;
 int amfs_host_mount (int *,TYPE_3__*) ;
 scalar_t__ directory_prefix (int ,char*) ;
 int discard_mntlist (TYPE_2__*) ;
 int dlog (char*,char*) ;
 int errno ;
 int mnttab_file_name ;
 int plog (int ,char*,char*) ;
 TYPE_2__* read_mtab (int ,int ) ;
 int rmdirs (char*) ;
 int unlock_mntlist () ;

__attribute__((used)) static int
amfs_host_umount(am_node *am, mntfs *mf)
{
  mntlist *ml, *mprev;
  int unmount_flags = (mf->mf_flags & MFF_ON_AUTOFS) ? AMU_UMOUNT_AUTOFS : 0;
  int xerror = 0;




  mntlist *mlist = read_mtab(mf->mf_mount, mnttab_file_name);
  ml = mlist;
  mprev = ((void*)0);
  while (ml) {
    mntlist *ml2 = ml->mnext;
    ml->mnext = mprev;
    mprev = ml;
    ml = ml2;
  }
  mlist = mprev;




  for (ml = mlist; ml && !xerror; ml = ml->mnext) {
    char *dir = ml->mnt->mnt_dir;
    if (directory_prefix(mf->mf_mount, dir)) {
      int error;
      dlog("amfs_host: unmounts %s", dir);



      error = UMOUNT_FS(dir, mnttab_file_name, unmount_flags);



      if (error) {
 if (!xerror && error != ENOENT)
   xerror = error;
 if (error != EBUSY) {
   errno = error;
   plog(XLOG_ERROR, "Tree unmount of %s failed: %m", ml->mnt->mnt_dir);
 }
      } else {
 (void) rmdirs(dir);
      }
    }
  }




  discard_mntlist(mlist);




  if (xerror && amd_state != Finishing) {
    xerror = amfs_host_mount(am, mf);
    if (!xerror) {




      xerror = EBUSY;
    }
  }
  return xerror;
}
