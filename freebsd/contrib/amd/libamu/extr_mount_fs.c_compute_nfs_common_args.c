
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct nfs_common_args {int flags; int rsize; int wsize; void* retrans; void* timeo; } ;
typedef int mntent_t ;


 int MNT2_GEN_OPT_RONLY ;
 int MNT2_NFS_OPT_COMPRESS ;
 int MNT2_NFS_OPT_INT ;
 int MNT2_NFS_OPT_INTR ;
 int MNT2_NFS_OPT_NOACL ;
 int MNT2_NFS_OPT_NOCONN ;
 int MNT2_NFS_OPT_NOCTO ;
 int MNT2_NFS_OPT_NODEVS ;
 int MNT2_NFS_OPT_NOINT ;
 int MNT2_NFS_OPT_NOINTR ;
 int MNT2_NFS_OPT_NONLM ;
 int MNT2_NFS_OPT_PRIVATE ;
 int MNT2_NFS_OPT_PROPLIST ;
 int MNT2_NFS_OPT_RESVPORT ;
 int MNT2_NFS_OPT_RETRANS ;
 int MNT2_NFS_OPT_RONLY ;
 int MNT2_NFS_OPT_RSIZE ;
 int MNT2_NFS_OPT_SOFT ;
 int MNT2_NFS_OPT_SPONGY ;
 int MNT2_NFS_OPT_TCP ;
 int MNT2_NFS_OPT_TIMEO ;
 int MNT2_NFS_OPT_WSIZE ;
 int MNT2_NFS_OPT_XLATECOOKIE ;
 int MNTTAB_OPT_COMPRESS ;
 int MNTTAB_OPT_CONN ;
 int MNTTAB_OPT_INTR ;
 int MNTTAB_OPT_NOACL ;
 int MNTTAB_OPT_NOCONN ;
 int MNTTAB_OPT_NOCTO ;
 int MNTTAB_OPT_NODEVS ;
 int MNTTAB_OPT_NOLOCK ;
 int MNTTAB_OPT_PRIVATE ;
 int MNTTAB_OPT_PROPLIST ;
 int MNTTAB_OPT_RESVPORT ;
 int MNTTAB_OPT_RETRANS ;
 int MNTTAB_OPT_RSIZE ;
 int MNTTAB_OPT_SOFT ;
 int MNTTAB_OPT_SPONGY ;
 int MNTTAB_OPT_TIMEO ;
 int MNTTAB_OPT_WSIZE ;
 int MNTTAB_OPT_XLATECOOKIE ;
 scalar_t__ NFS_VERSION ;
 scalar_t__ STREQ (char const*,char*) ;
 int XLOG_USER ;
 int XLOG_WARNING ;
 int * amu_hasmntopt (int *,int ) ;
 int* flags ;
 int genflags ;
 void* hasmntval (int *,int ) ;
 int plog (int ,char*) ;

__attribute__((used)) static void
compute_nfs_common_args(struct nfs_common_args *nap, mntent_t *mntp,
    const char *nfs_proto, u_long nfs_version)
{
  nap->rsize = hasmntval(mntp, MNTTAB_OPT_RSIZE);




  if (nfs_version == NFS_VERSION && nap->rsize > 8192)
    nap->rsize = 8192;

  nap->wsize = hasmntval(mntp, MNTTAB_OPT_WSIZE);




  if (nfs_version == NFS_VERSION && nap->wsize > 8192)
    nap->wsize = 8192;

  nap->timeo = hasmntval(mntp, MNTTAB_OPT_TIMEO);





  nap->retrans = hasmntval(mntp, MNTTAB_OPT_RETRANS);
}
