
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int voidp ;
struct TYPE_8__ {char* mnt_dir; char* mnt_fsname; char* mnt_opts; int mnt_type; } ;
typedef TYPE_1__ mntent_t ;
typedef int mnt ;
struct TYPE_9__ {int flags; int iso_flags; char* fspec; scalar_t__ ssector; scalar_t__ norrip; int iso_pgthresh; } ;
typedef TYPE_2__ cdfs_args_t ;
typedef int cdfs_args ;
typedef int caddr_t ;
typedef int MTYPE_TYPE ;


 int MNT2_CDFS_OPT_DEFPERM ;
 int MNT2_CDFS_OPT_EXTATT ;
 int MNT2_CDFS_OPT_GENS ;
 int MNT2_CDFS_OPT_NOCASETRANS ;
 int MNT2_CDFS_OPT_NODEFPERM ;
 int MNT2_CDFS_OPT_NOJOLIET ;
 int MNT2_CDFS_OPT_NORRIP ;
 int MNT2_CDFS_OPT_NOVERSION ;
 int MNT2_CDFS_OPT_RRCASEINS ;
 int MNT2_CDFS_OPT_RRIP ;
 int MNTTAB_OPT_DEFPERM ;
 int MNTTAB_OPT_EXTATT ;
 int MNTTAB_OPT_GENS ;
 int MNTTAB_OPT_NOCASETRANS ;
 int MNTTAB_OPT_NODEFPERM ;
 int MNTTAB_OPT_NOJOLIET ;
 int MNTTAB_OPT_NORRIP ;
 int MNTTAB_OPT_NOVERSION ;
 int MNTTAB_OPT_PGTHRESH ;
 int MNTTAB_OPT_RRCASEINS ;
 int MNTTAB_OPT_RRIP ;
 int MNTTAB_TYPE_CDFS ;
 int MOUNT_TYPE_CDFS ;
 scalar_t__ amu_hasmntopt (TYPE_1__*,int ) ;
 int autofs_compute_mount_flags (TYPE_1__*) ;
 int compute_mount_flags (TYPE_1__*) ;
 int hasmntval (TYPE_1__*,int ) ;
 int memset (int ,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (TYPE_1__*,int,int ,int ,int ,int ,int *,int ,int) ;

__attribute__((used)) static int
mount_cdfs(char *mntdir, char *fs_name, char *opts, int on_autofs)
{
  cdfs_args_t cdfs_args;
  mntent_t mnt;
  int genflags, cdfs_flags, retval;




  MTYPE_TYPE type = MOUNT_TYPE_CDFS;

  memset((voidp) &cdfs_args, 0, sizeof(cdfs_args));
  cdfs_flags = 0;




  memset((voidp) &mnt, 0, sizeof(mnt));
  mnt.mnt_dir = mntdir;
  mnt.mnt_fsname = fs_name;
  mnt.mnt_type = MNTTAB_TYPE_CDFS;
  mnt.mnt_opts = opts;
  genflags = compute_mount_flags(&mnt);
  retval = mount_fs(&mnt, genflags, (caddr_t) &cdfs_args, 0, type, 0, ((void*)0), mnttab_file_name, on_autofs);

  return retval;
}
