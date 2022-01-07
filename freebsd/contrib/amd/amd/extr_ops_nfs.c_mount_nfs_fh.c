
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int voidp ;
typedef scalar_t__ u_long ;
typedef int transp_timeo_opts ;
typedef int transp_retrans_opts ;
typedef int nfs_args_t ;
typedef int nfs4_args_t ;
struct TYPE_15__ {int mf_flags; scalar_t__* mf_mopts; scalar_t__* mf_remopts; TYPE_4__* mf_server; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_16__ {char* mnt_dir; char* mnt_fsname; char* mnt_opts; void* mnt_type; } ;
typedef TYPE_3__ mntent_t ;
typedef int mnt ;
typedef int host ;
struct TYPE_17__ {scalar_t__ fs_version; char* fs_proto; TYPE_10__* fs_ip; } ;
typedef TYPE_4__ fserver ;
typedef int am_nfs_handle_t ;
struct TYPE_18__ {scalar_t__* amfs_auto_timeo; scalar_t__* amfs_auto_retrans; } ;
struct TYPE_14__ {int s_addr; } ;
struct TYPE_13__ {TYPE_1__ sin_addr; } ;
typedef int MTYPE_TYPE ;


 int AMU_TYPE_NONE ;
 int AMU_TYPE_TCP ;
 int AMU_TYPE_UDP ;
 int D_TRACE ;
 int ENOENT ;
 int EPERM ;
 int MAXHOSTNAMELEN ;
 int MAXPATHLEN ;
 int MFF_ON_AUTOFS ;
 int MNTTAB_OPT_RETRANS ;
 int MNTTAB_OPT_RETRY ;
 int MNTTAB_OPT_TIMEO ;
 void* MNTTAB_TYPE_NFS ;
 void* MNTTAB_TYPE_NFS3 ;
 void* MNTTAB_TYPE_NFS4 ;
 int MOUNT_TYPE_NFS ;
 int MOUNT_TYPE_NFS3 ;
 int MOUNT_TYPE_NFS4 ;
 scalar_t__ NFS_VERSION3 ;
 scalar_t__ NFS_VERSION4 ;
 scalar_t__ STREQ (char*,char*) ;
 int XFREE (char*) ;
 int XLOG_DEBUG ;
 int XLOG_INFO ;
 scalar_t__ amuDebug (int ) ;
 int autofs_compute_mount_flags (TYPE_3__*) ;
 int compute_mount_flags (TYPE_3__*) ;
 int compute_nfs_args (void*,TYPE_3__*,int,int *,TYPE_10__*,scalar_t__,char*,int *,char*,char*) ;
 int discard_nfs_args (void*,scalar_t__) ;
 TYPE_8__ gopt ;
 int hasmntval (TYPE_3__*,int ) ;
 int islocalnet (int ) ;
 int memset (int ,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (TYPE_3__*,int,void*,int,int ,scalar_t__,char*,int ,int) ;
 int plog (int ,char*,...) ;
 int print_nfs_args (void*,scalar_t__) ;
 char* str3cat (char*,char*,char*,scalar_t__*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int xsnprintf (char*,int,char*,int ,scalar_t__) ;
 int xstrlcpy (char*,char*,int) ;

int
mount_nfs_fh(am_nfs_handle_t *fhp, char *mntdir, char *fs_name, mntfs *mf)
{
  MTYPE_TYPE type;
  char *colon;
  char *xopts=((void*)0), transp_timeo_opts[40], transp_retrans_opts[40];
  char host[MAXHOSTNAMELEN + MAXPATHLEN + 2];
  fserver *fs = mf->mf_server;
  u_long nfs_version = fs->fs_version;
  char *nfs_proto = fs->fs_proto;
  int on_autofs = mf->mf_flags & MFF_ON_AUTOFS;
  int error;
  int genflags;
  int retry;
  int proto = AMU_TYPE_NONE;
  mntent_t mnt;
  void *argsp;
  nfs_args_t nfs_args;
  if (!(colon = strchr(fs_name, ':')))
    return ENOENT;



  xstrlcpy(host, fs_name, sizeof(host));
  transp_timeo_opts[0] = transp_retrans_opts[0] = '\0';
  if (STREQ(nfs_proto, "udp"))
    proto = AMU_TYPE_UDP;
  else if (STREQ(nfs_proto, "tcp"))
    proto = AMU_TYPE_TCP;
  if (proto != AMU_TYPE_NONE) {
    if (gopt.amfs_auto_timeo[proto] > 0)
      xsnprintf(transp_timeo_opts, sizeof(transp_timeo_opts), "%s=%d,",
  MNTTAB_OPT_TIMEO, gopt.amfs_auto_timeo[proto]);
    if (gopt.amfs_auto_retrans[proto] > 0)
      xsnprintf(transp_retrans_opts, sizeof(transp_retrans_opts), "%s=%d,",
  MNTTAB_OPT_RETRANS, gopt.amfs_auto_retrans[proto]);
  }

  if (mf->mf_remopts && *mf->mf_remopts &&
      !islocalnet(fs->fs_ip->sin_addr.s_addr)) {
    plog(XLOG_INFO, "Using remopts=\"%s\"", mf->mf_remopts);

    xopts = str3cat(xopts, transp_timeo_opts, transp_retrans_opts, mf->mf_remopts);
  } else {

    xopts = str3cat(xopts, transp_timeo_opts, transp_retrans_opts, mf->mf_mopts);
  }

  memset((voidp) &mnt, 0, sizeof(mnt));
  mnt.mnt_dir = mntdir;
  mnt.mnt_fsname = fs_name;
  mnt.mnt_opts = xopts;
  {
    argsp = &nfs_args;
    type = MOUNT_TYPE_NFS;
    mnt.mnt_type = MNTTAB_TYPE_NFS;
  }
  plog(XLOG_INFO, "mount_nfs_fh: NFS version %d", (int) nfs_version);
  plog(XLOG_INFO, "mount_nfs_fh: using NFS transport %s", nfs_proto);

  retry = hasmntval(&mnt, MNTTAB_OPT_RETRY);
  if (retry <= 0)
    retry = 1;

  genflags = compute_mount_flags(&mnt);






   compute_nfs_args(argsp,
      &mnt,
      genflags,
      ((void*)0),
      fs->fs_ip,
      nfs_version,
      nfs_proto,
      fhp,
      host,
      fs_name);


  if (amuDebug(D_TRACE)) {
    print_nfs_args(argsp, nfs_version);
    plog(XLOG_DEBUG, "Generic mount flags 0x%x used for NFS mount", genflags);
  }
  error = mount_fs(&mnt, genflags, argsp, retry, type,
     nfs_version, nfs_proto, mnttab_file_name, on_autofs);
  XFREE(mnt.mnt_opts);
  discard_nfs_args(argsp, nfs_version);
  return error;
}
