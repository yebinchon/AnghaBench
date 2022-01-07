
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int voidp ;
struct TYPE_5__ {char* mnt_dir; char* mnt_fsname; char const* mnt_type; char* mnt_opts; } ;
typedef TYPE_1__ mntent_t ;
typedef int mnt ;
typedef int ext_args_t ;
typedef int ext_args ;
typedef int caddr_t ;
typedef char* MTYPE_TYPE ;


 int autofs_compute_mount_flags (TYPE_1__*) ;
 int compute_mount_flags (TYPE_1__*) ;
 int memset (int ,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (TYPE_1__*,int,int ,int ,char*,int ,int *,int ,int) ;

__attribute__((used)) static int
mount_ext(char *mntdir, char *fs_name, char *opts, int on_autofs, char *
    mount_type, const char *mnttab_type)
{
  ext_args_t ext_args;
  mntent_t mnt;
  int flags;




  MTYPE_TYPE type = mount_type;

  memset((voidp) &ext_args, 0, sizeof(ext_args));




  memset((voidp) &mnt, 0, sizeof(mnt));
  mnt.mnt_dir = mntdir;
  mnt.mnt_fsname = fs_name;
  mnt.mnt_type = mnttab_type;
  mnt.mnt_opts = opts;

  flags = compute_mount_flags(&mnt);
  return mount_fs(&mnt, flags, (caddr_t) &ext_args, 0, type, 0, ((void*)0), mnttab_file_name, on_autofs);
}
