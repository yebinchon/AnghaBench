
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int voidp ;
struct TYPE_6__ {char* mnt_dir; char* mnt_fsname; char* mnt_opts; int mnt_type; } ;
typedef TYPE_1__ mntent_t ;
typedef int mnt ;
struct TYPE_7__ {char* fspec; int version; int flags; } ;
typedef TYPE_2__ efs_args_t ;
typedef int efs_args ;
typedef int caddr_t ;
typedef int MTYPE_TYPE ;


 int EFS_MNT_VERSION ;
 int MNTTAB_TYPE_EFS ;
 int MOUNT_TYPE_EFS ;
 int autofs_compute_mount_flags (TYPE_1__*) ;
 int compute_mount_flags (TYPE_1__*) ;
 int memset (int ,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (TYPE_1__*,int,int ,int ,int ,int ,int *,int ,int) ;

__attribute__((used)) static int
mount_efs(char *mntdir, char *fs_name, char *opts, int on_autofs)
{
  efs_args_t efs_args;
  mntent_t mnt;
  int flags;




  MTYPE_TYPE type = MOUNT_TYPE_EFS;

  memset((voidp) &efs_args, 0, sizeof(efs_args));




  memset((voidp) &mnt, 0, sizeof(mnt));
  mnt.mnt_dir = mntdir;
  mnt.mnt_fsname = fs_name;
  mnt.mnt_type = MNTTAB_TYPE_EFS;
  mnt.mnt_opts = opts;

  flags = compute_mount_flags(&mnt);
  return mount_fs(&mnt, flags, (caddr_t) &efs_args, 0, type, 0, ((void*)0), mnttab_file_name, on_autofs);
}
