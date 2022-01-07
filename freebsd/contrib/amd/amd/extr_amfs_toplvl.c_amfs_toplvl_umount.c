
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_6__ {int mf_flags; } ;
typedef TYPE_1__ mntfs ;
struct TYPE_7__ {int am_path; } ;
typedef TYPE_2__ am_node ;
struct TYPE_8__ {int flags; } ;


 int AMU_UMOUNT_AUTOFS ;
 int AMU_UMOUNT_DETACH ;
 int AMU_UMOUNT_FORCE ;
 int CFM_FORCED_UNMOUNTS ;
 int EBUSY ;
 int ENOTDIR ;
 int MFF_IS_AUTOFS ;
 int MFF_ON_AUTOFS ;
 int S_IFDIR ;
 int S_IFMT ;
 int UMOUNT_FS (int ,int ,int) ;
 int XLOG_ERROR ;
 int XLOG_WARNING ;
 int dlog (char*,int ) ;
 int errno ;
 TYPE_3__ gopt ;
 scalar_t__ lstat (int ,struct stat*) ;
 int mnttab_file_name ;
 int plog (int ,char*,int ) ;
 int sleep (int) ;

int
amfs_toplvl_umount(am_node *mp, mntfs *mf)
{
  struct stat stb;
  int unmount_flags = (mf->mf_flags & MFF_ON_AUTOFS) ? AMU_UMOUNT_AUTOFS : 0;
  int error;
  int count = 0;

again:
  if (lstat(mp->am_path, &stb) < 0) {
    error = errno;
    dlog("lstat(%s): %m", mp->am_path);
    goto out;
  }
  if ((stb.st_mode & S_IFMT) != S_IFDIR) {
    plog(XLOG_ERROR, "amfs_toplvl_umount: %s is not a directory, aborting.", mp->am_path);
    error = ENOTDIR;
    goto out;
  }

  error = UMOUNT_FS(mp->am_path, mnttab_file_name, unmount_flags);
  if (error == EBUSY) {
    plog(XLOG_WARNING, "amfs_toplvl_unmount retrying %s in 1s", mp->am_path);
    count++;
    sleep(1);






    if (gopt.flags & CFM_FORCED_UNMOUNTS) {
      if (count == 5) {
 dlog("enabling forced unmounts for toplvl node %s", mp->am_path);
 unmount_flags |= AMU_UMOUNT_FORCE;
      }
      if (count == 10) {
 dlog("enabling detached unmounts for toplvl node %s", mp->am_path);
 unmount_flags |= AMU_UMOUNT_DETACH;
      }
    }
    goto again;
  }
out:
  return error;
}
