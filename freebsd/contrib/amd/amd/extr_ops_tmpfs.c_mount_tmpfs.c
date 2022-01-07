
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int voidp ;
struct TYPE_7__ {int ta_root_mode; void* ta_root_gid; void* ta_root_uid; void* ta_size_max; void* ta_nodes_max; int ta_version; } ;
typedef TYPE_1__ tmpfs_args_t ;
typedef int tmpfs_args ;
struct TYPE_8__ {char* mnt_dir; char* mnt_fsname; char* mnt_opts; int mnt_type; } ;
typedef TYPE_2__ mntent_t ;
typedef int mnt ;
typedef int caddr_t ;
typedef int MTYPE_TYPE ;


 int MNTTAB_TYPE_TMPFS ;
 int MOUNT_TYPE_TMPFS ;
 int TMPFS_ARGS_VERSION ;
 char* amu_hasmntopt (TYPE_2__*,char*) ;
 void* atoi (char const*) ;
 int autofs_compute_mount_flags (TYPE_2__*) ;
 int compute_mount_flags (TYPE_2__*) ;
 int memset (int ,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (TYPE_2__*,int,int ,int ,int ,int ,int *,int ,int) ;
 int strtol (char const*,int *,int) ;

__attribute__((used)) static int
mount_tmpfs(char *mntdir, char *fs_name, char *opts, int on_autofs)
{
  tmpfs_args_t tmpfs_args;
  mntent_t mnt;
  int flags;
  const char *p;




  MTYPE_TYPE type = MOUNT_TYPE_TMPFS;

  p = ((void*)0);
  memset((voidp) &tmpfs_args, 0, sizeof(tmpfs_args));




  memset((voidp) &mnt, 0, sizeof(mnt));
  mnt.mnt_dir = mntdir;
  mnt.mnt_fsname = fs_name;
  mnt.mnt_type = MNTTAB_TYPE_TMPFS;
  mnt.mnt_opts = opts;

  flags = compute_mount_flags(&mnt);
  return mount_fs(&mnt, flags, (caddr_t) &tmpfs_args, 0, type, 0, ((void*)0), mnttab_file_name, on_autofs);
}
