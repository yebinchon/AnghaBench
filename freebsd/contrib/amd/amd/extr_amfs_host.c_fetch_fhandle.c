
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char* voidp ;
typedef scalar_t__ u_long ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct fhstatus {int fhs_status; int fhs_fh; } ;
struct TYPE_7__ {int * fhandle3_val; int fhandle3_len; } ;
struct TYPE_8__ {TYPE_1__ fhandle; } ;
struct TYPE_9__ {TYPE_2__ mountinfo; } ;
struct am_mountres3 {int fhs_status; TYPE_3__ mountres3_u; } ;
typedef int res3 ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_10__ {int am_fh3_length; int * am_fh3_data; } ;
struct TYPE_11__ {int v2; TYPE_4__ v3; } ;
typedef TYPE_5__ am_nfs_handle_t ;
typedef int am_nfs_fh3 ;
typedef int XDRPROC_T_TYPE ;
typedef int SVC_IN_ARG_TYPE ;
typedef int CLIENT ;


 int EIO ;
 int MOUNTPROC_MNT ;
 int NFS_FHSIZE ;
 scalar_t__ NFS_VERSION3 ;
 scalar_t__ NFS_VERSION4 ;
 int RPC_SUCCESS ;
 int XLOG_ERROR ;
 int XLOG_INFO ;
 int clnt_call (int *,int ,int ,int ,int ,int ,struct timeval) ;
 int clnt_sperrno (int) ;
 int dlog (char*,...) ;
 int errno ;
 int memmove (int *,int *,int ) ;
 int memset (char*,int ,int) ;
 int plog (int ,char*,int) ;
 scalar_t__ xdr_am_mountres3 ;
 scalar_t__ xdr_dirpath ;
 scalar_t__ xdr_fhstatus ;

__attribute__((used)) static int
fetch_fhandle(CLIENT *client, char *dir, am_nfs_handle_t *fhp, u_long nfs_version)
{
  struct timeval tv;
  enum clnt_stat clnt_stat;
  struct fhstatus res;







  tv.tv_sec = 20;
  tv.tv_usec = 0;

  dlog("Fetching fhandle for %s", dir);






  plog(XLOG_INFO, "fetch_fhandle: NFS version %d", (int) nfs_version);
    clnt_stat = clnt_call(client,
     MOUNTPROC_MNT,
     (XDRPROC_T_TYPE) xdr_dirpath,
     (SVC_IN_ARG_TYPE) &dir,
     (XDRPROC_T_TYPE) xdr_fhstatus,
     (SVC_IN_ARG_TYPE) &res,
     tv);
    if (clnt_stat != RPC_SUCCESS) {
      plog(XLOG_ERROR, "mountd rpc failed: %s", clnt_sperrno(clnt_stat));
      return EIO;
    }

    if (res.fhs_status) {
      errno = res.fhs_status;
      dlog("fhandle fetch for mount version 1 failed: %m");
      return errno;
    }
    memmove(&fhp->v2, &res.fhs_fh, NFS_FHSIZE);





  return 0;
}
