
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_short ;
typedef int u_long ;
struct sockaddr_in {char* mnt_dir; char* mnt_opts; char* mnt_type; int sin_port; int sin_addr; int sin_family; int mnt_fsname; } ;
typedef int sin ;
struct TYPE_11__ {int knconf; int * addr; } ;
typedef TYPE_1__ nfs_args_t ;
struct TYPE_12__ {int mf_flags; char* mf_mount; } ;
typedef TYPE_2__ mntfs ;
typedef struct sockaddr_in mntent_t ;
typedef int mnt ;
typedef int fs_hostname ;
typedef int caddr_t ;
struct TYPE_13__ {int am_path; scalar_t__ am_autofs_fh; } ;
typedef TYPE_3__ am_node ;
typedef int am_nfs_handle_t ;
struct TYPE_15__ {int flags; } ;
struct TYPE_14__ {int xp_ltaddr; } ;
typedef int MTYPE_TYPE ;


 int AF_INET ;
 int AMU_UMOUNT_DETACH ;
 int AMU_UMOUNT_FORCE ;
 int CFM_FORCED_UNMOUNTS ;
 int D_TRACE ;
 int EINVAL ;


 char* HIDE_MOUNT_TYPE ;
 int HOSTNAMESZ ;
 int MAXHOSTNAMELEN ;
 int MAXPATHLEN ;
 int MFF_IS_AUTOFS ;
 int MFF_ON_AUTOFS ;
 int MNTTAB_OPT_PORT ;
 int MNTTAB_OPT_RETRY ;
 int MOUNT_TYPE_AUTOFS ;
 int MOUNT_TYPE_NFS ;
 int UMOUNT_FS (int,int ,int) ;
 int XLOG_DEBUG ;
 int XLOG_ERROR ;
 int XLOG_FATAL ;
 int XLOG_WARNING ;
 int am_get_hostname () ;
 scalar_t__ amuDebug (int ) ;
 int autofs_compute_mount_flags (struct sockaddr_in*) ;
 int compute_automounter_mount_flags (struct sockaddr_in*) ;
 int compute_automounter_nfs_args (TYPE_1__*,struct sockaddr_in*) ;
 int compute_mount_flags (struct sockaddr_in*) ;
 int compute_nfs_args (TYPE_1__*,struct sockaddr_in*,int,int *,struct sockaddr_in*,int ,char*,int *,char*,int ) ;
 int errno ;
 int free_knetconfig (int ) ;
 int get_nfs_dispatcher_version (int ) ;
 int * get_root_nfs_fh (char*,int *) ;
 int get_server_pid () ;
 TYPE_6__ gopt ;
 int hasmntval (struct sockaddr_in*,int ) ;
 int htons (int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (struct sockaddr_in*,int,int ,int,int ,int ,int *,int ,int) ;
 int myipaddr ;
 int nfs_dispatcher ;
 int * nfsncp ;
 TYPE_5__* nfsxprt ;
 int pid_fsname ;
 int plog (int ,char*,...) ;
 int print_nfs_args (TYPE_1__*,int ) ;
 int strlen (char*) ;
 int xsnprintf (char*,int,char*,int ,int ,char*) ;
 int xstrlcpy (char*,char*,int) ;

int
amfs_mount(am_node *mp, mntfs *mf, char *opts)
{
  char fs_hostname[MAXHOSTNAMELEN + MAXPATHLEN + 1];
  int retry, error = 0, genflags;
  int on_autofs = mf->mf_flags & MFF_ON_AUTOFS;
  char *dir = mf->mf_mount;
  mntent_t mnt;
  MTYPE_TYPE type;
  int forced_unmount = 0;
  u_long nfs_version = get_nfs_dispatcher_version(nfs_dispatcher);

  memset(&mnt, 0, sizeof(mnt));
  mnt.mnt_dir = dir;
  mnt.mnt_fsname = pid_fsname;
  mnt.mnt_opts = opts;
  {
    type = MOUNT_TYPE_NFS;






    mnt.mnt_type = HIDE_MOUNT_TYPE;
  }

  retry = hasmntval(&mnt, MNTTAB_OPT_RETRY);
  if (retry <= 0)
    retry = 2;
  xsnprintf(fs_hostname, sizeof(fs_hostname), "pid%ld@%s:%s",
     get_server_pid(), am_get_hostname(), dir);



  if (strlen(fs_hostname) >= MAXHOSTNAMELEN)
    xstrlcpy(fs_hostname + MAXHOSTNAMELEN - 3, "..",
      sizeof(fs_hostname) - MAXHOSTNAMELEN + 3);
  genflags = compute_mount_flags(&mnt);




  genflags |= compute_automounter_mount_flags(&mnt);

again:
  if (!(mf->mf_flags & MFF_IS_AUTOFS)) {
    nfs_args_t nfs_args;
    am_nfs_handle_t *fhp, anh;

    u_short port;
    struct sockaddr_in sin;





    fhp = get_root_nfs_fh(dir, &anh);
    if (!fhp) {
      plog(XLOG_FATAL, "Can't find root file handle for %s", dir);
      return EINVAL;
    }





    memset(&sin, 0, sizeof(sin));

    sin.sin_family = AF_INET;
    sin.sin_addr = myipaddr;
    port = hasmntval(&mnt, MNTTAB_OPT_PORT);
    if (port) {
      sin.sin_port = htons(port);
    } else {
      plog(XLOG_ERROR, "no port number specified for %s", dir);
      return EINVAL;
    }
    compute_nfs_args(&nfs_args,
       &mnt,
       genflags,
       ((void*)0),
       &sin,
       nfs_version,
       "udp",
       fhp,
       fs_hostname,
       pid_fsname);







    compute_automounter_nfs_args(&nfs_args, &mnt);

    if (amuDebug(D_TRACE)) {
      print_nfs_args(&nfs_args, 0);
      plog(XLOG_DEBUG, "Generic mount flags 0x%x", genflags);
    }


    error = mount_fs(&mnt, genflags, (caddr_t) &nfs_args,
       retry, type, 0, ((void*)0), mnttab_file_name, on_autofs);
  }
  if (error == 0 || forced_unmount)
     return error;





  if (gopt.flags & CFM_FORCED_UNMOUNTS) {
    switch (errno) {
    case 128:
    case 129:
      forced_unmount = errno;
      plog(XLOG_WARNING, "Mount %s failed (%m); force unmount.", mp->am_path);
      if ((error = UMOUNT_FS(mp->am_path, mnttab_file_name,
        AMU_UMOUNT_FORCE | AMU_UMOUNT_DETACH)) < 0) {
 plog(XLOG_WARNING, "Forced umount %s failed: %m.", mp->am_path);
 errno = forced_unmount;
      } else
 goto again;
    default:
      break;
    }
  }

  return error;
}
