
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int voidp ;
typedef int u_int ;
struct passwd {void* pw_uid; } ;
struct group {void* gr_gid; } ;
struct TYPE_8__ {char* fspec; int mask; int dirmask; scalar_t__ dsttime; scalar_t__ secondswest; void* gid; void* uid; } ;
typedef TYPE_1__ pcfs_args_t ;
typedef int pcfs_args ;
struct TYPE_9__ {char* mnt_dir; char* mnt_fsname; char* mnt_opts; int mnt_type; } ;
typedef TYPE_2__ mntent_t ;
typedef int mnt ;
typedef int caddr_t ;
typedef int MTYPE_TYPE ;


 int D_TRACE ;
 int MNTTAB_OPT_DIRMASK ;
 int MNTTAB_OPT_GROUP ;
 int MNTTAB_OPT_MASK ;
 int MNTTAB_OPT_USER ;
 int MNTTAB_TYPE_PCFS ;
 int MOUNT_TYPE_PCFS ;
 int XFREE (char*) ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 void* atoi (char*) ;
 int autofs_compute_mount_flags (TYPE_2__*) ;
 int compute_mount_flags (TYPE_2__*) ;
 struct group* getgrnam (char*) ;
 struct passwd* getpwnam (char*) ;
 char* hasmntstr (TYPE_2__*,int ) ;
 int hasmntval (TYPE_2__*,int ) ;
 int memset (int ,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (TYPE_2__*,int,int ,int ,int ,int ,int *,int ,int) ;
 int plog (int ,char*,int) ;

__attribute__((used)) static int
mount_pcfs(char *mntdir, char *fs_name, char *opts, int on_autofs)
{
  pcfs_args_t pcfs_args;
  mntent_t mnt;
  int flags;
  MTYPE_TYPE type = MOUNT_TYPE_PCFS;

  memset((voidp) &pcfs_args, 0, sizeof(pcfs_args));




  memset((voidp) &mnt, 0, sizeof(mnt));
  mnt.mnt_dir = mntdir;
  mnt.mnt_fsname = fs_name;
  mnt.mnt_type = MNTTAB_TYPE_PCFS;
  mnt.mnt_opts = opts;

  flags = compute_mount_flags(&mnt);




  if (amuDebug(D_TRACE))
    plog(XLOG_DEBUG, "mount_pcfs: flags=0x%x", (u_int) flags);
  return mount_fs(&mnt, flags, (caddr_t) & pcfs_args, 0, type, 0, ((void*)0), mnttab_file_name, on_autofs);
}
