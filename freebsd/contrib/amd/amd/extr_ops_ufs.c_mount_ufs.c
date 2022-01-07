
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int voidp ;
struct TYPE_7__ {int flags; int ufs_flags; char* fspec; int ufs_pgthresh; } ;
typedef TYPE_1__ ufs_args_t ;
typedef int ufs_args ;
struct TYPE_8__ {char* mnt_dir; char* mnt_fsname; char* mnt_opts; int mnt_type; } ;
typedef TYPE_2__ mntent_t ;
typedef int mnt ;
typedef int caddr_t ;
typedef int MTYPE_TYPE ;


 int MNTTAB_OPT_PGTHRESH ;
 int MNTTAB_TYPE_UFS ;
 int MOUNT_TYPE_UFS ;
 int autofs_compute_mount_flags (TYPE_2__*) ;
 int compute_mount_flags (TYPE_2__*) ;
 int hasmntval (TYPE_2__*,int ) ;
 int memset (int ,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (TYPE_2__*,int,int ,int ,int ,int ,int *,int ,int) ;

__attribute__((used)) static int
mount_ufs(char *mntdir, char *fs_name, char *opts, int on_autofs)
{
  ufs_args_t ufs_args;
  mntent_t mnt;
  int genflags;




  MTYPE_TYPE type = MOUNT_TYPE_UFS;

  memset((voidp) &ufs_args, 0, sizeof(ufs_args));




  memset((voidp) &mnt, 0, sizeof(mnt));
  mnt.mnt_dir = mntdir;
  mnt.mnt_fsname = fs_name;
  mnt.mnt_type = MNTTAB_TYPE_UFS;
  mnt.mnt_opts = opts;

  genflags = compute_mount_flags(&mnt);
  return mount_fs(&mnt, genflags, (caddr_t) &ufs_args, 0, type, 0, ((void*)0), mnttab_file_name, on_autofs);
}
