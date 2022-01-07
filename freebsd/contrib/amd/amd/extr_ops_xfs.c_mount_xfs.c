
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* fspec; int flags; } ;
typedef TYPE_1__ xfs_args_t ;
typedef int xfs_args ;
typedef int voidp ;
struct TYPE_7__ {char* mnt_dir; char* mnt_fsname; char* mnt_opts; int mnt_type; } ;
typedef TYPE_2__ mntent_t ;
typedef int mnt ;
typedef int caddr_t ;
typedef int MTYPE_TYPE ;


 int MNTTAB_TYPE_XFS ;
 int MOUNT_TYPE_XFS ;
 int autofs_compute_mount_flags (TYPE_2__*) ;
 int compute_mount_flags (TYPE_2__*) ;
 int memset (int ,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (TYPE_2__*,int,int ,int ,int ,int ,int *,int ,int) ;

__attribute__((used)) static int
mount_xfs(char *mntdir, char *fs_name, char *opts, int on_autofs)
{
  xfs_args_t xfs_args;
  mntent_t mnt;
  int flags;




  MTYPE_TYPE type = MOUNT_TYPE_XFS;

  memset((voidp) &xfs_args, 0, sizeof(xfs_args));




  memset((voidp) &mnt, 0, sizeof(mnt));
  mnt.mnt_dir = mntdir;
  mnt.mnt_fsname = fs_name;
  mnt.mnt_type = MNTTAB_TYPE_XFS;
  mnt.mnt_opts = opts;

  flags = compute_mount_flags(&mnt);
  return mount_fs(&mnt, flags, (caddr_t) &xfs_args, 0, type, 0, ((void*)0), mnttab_file_name, on_autofs);
}
