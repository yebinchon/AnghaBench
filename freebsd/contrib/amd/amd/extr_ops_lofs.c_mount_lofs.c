
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int voidp ;
struct TYPE_5__ {char* mnt_dir; char* mnt_fsname; char* mnt_opts; int mnt_type; } ;
typedef TYPE_1__ mntent_t ;
typedef int mnt ;
typedef int MTYPE_TYPE ;


 int MNTTAB_TYPE_LOFS ;
 int MOUNT_TYPE_LOFS ;
 int autofs_compute_mount_flags (TYPE_1__*) ;
 int compute_mount_flags (TYPE_1__*) ;
 int memset (int ,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (TYPE_1__*,int,int *,int ,int ,int ,int *,int ,int) ;

int
mount_lofs(char *mntdir, char *fs_name, char *opts, int on_autofs)
{
  mntent_t mnt;
  int flags;




  MTYPE_TYPE type = MOUNT_TYPE_LOFS;




  memset((voidp) &mnt, 0, sizeof(mnt));
  mnt.mnt_dir = mntdir;
  mnt.mnt_fsname = fs_name;
  mnt.mnt_type = MNTTAB_TYPE_LOFS;
  mnt.mnt_opts = opts;

  flags = compute_mount_flags(&mnt);
  return mount_fs(&mnt, flags, ((void*)0), 0, type, 0, ((void*)0), mnttab_file_name, on_autofs);
}
