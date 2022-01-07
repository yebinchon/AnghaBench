
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char* voidp ;
struct TYPE_8__ {char* mnt_dir; char* mnt_fsname; char* mnt_opts; int mnt_type; } ;
typedef TYPE_2__ mntent_t ;
typedef int mnt ;
typedef int caddr_t ;
struct TYPE_7__ {int opt_flags; int opt_fgsize; int opt_popsize; } ;
struct TYPE_9__ {char* cfs_fsid; char* cfs_cacheid; char* cfs_cachedir; char* cfs_backfs; scalar_t__ cfs_acdirmax; scalar_t__ cfs_acdirmin; scalar_t__ cfs_acregmax; scalar_t__ cfs_acregmin; TYPE_1__ cfs_options; } ;
typedef TYPE_3__ cachefs_args_t ;
typedef int ca ;
typedef int MTYPE_TYPE ;


 int CFS_ACCESS_BACKFS ;
 int CFS_WRITE_AROUND ;
 int DEF_FILEGRP_SIZE ;
 int DEF_POP_SIZE ;
 int MNTTAB_TYPE_CACHEFS ;
 int MOUNT_TYPE_CACHEFS ;
 int autofs_compute_mount_flags (TYPE_2__*) ;
 int compute_mount_flags (TYPE_2__*) ;
 int memset (char*,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (TYPE_2__*,int,int ,int ,int ,int ,int *,int ,int) ;
 char* strpbrk (char*,char*) ;
 int xsnprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int
mount_cachefs(char *mntdir, char *backdir, char *cachedir,
       char *opts, int on_autofs)
{
  cachefs_args_t ca;
  mntent_t mnt;
  int flags;
  char *cp;
  MTYPE_TYPE type = MOUNT_TYPE_CACHEFS;

  memset((voidp) &ca, 0, sizeof(ca));




  memset((voidp) &mnt, 0, sizeof(mnt));
  mnt.mnt_dir = mntdir;
  mnt.mnt_fsname = backdir;
  mnt.mnt_type = MNTTAB_TYPE_CACHEFS;
  mnt.mnt_opts = opts;

  flags = compute_mount_flags(&mnt);
  ca.cfs_options.opt_flags = CFS_WRITE_AROUND | CFS_ACCESS_BACKFS;

  ca.cfs_options.opt_popsize = DEF_POP_SIZE;

  ca.cfs_options.opt_fgsize = DEF_FILEGRP_SIZE;


  ca.cfs_fsid = cachedir;


  memset(ca.cfs_cacheid, 0, sizeof(ca.cfs_cacheid));





  xsnprintf(ca.cfs_cacheid, sizeof(ca.cfs_cacheid),
     "%s:%s", ca.cfs_fsid, mntdir);

  cp = ca.cfs_cacheid;
  while ((cp = strpbrk(cp, "/")) != ((void*)0))
    *cp = '_';


  ca.cfs_cachedir = cachedir;


  ca.cfs_backfs = backdir;


  ca.cfs_acregmin = 0;
  ca.cfs_acregmax = 0;
  ca.cfs_acdirmin = 0;
  ca.cfs_acdirmax = 0;




  return mount_fs(&mnt, flags, (caddr_t) &ca, 0, type, 0, ((void*)0), mnttab_file_name, on_autofs);
}
