
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int voidp ;
struct sockaddr_in {int dummy; } ;
typedef int res3 ;
typedef int res ;
typedef int opaque_t ;
struct TYPE_17__ {int drok_fhandle; } ;
struct TYPE_18__ {TYPE_5__ dr_drok_u; } ;
struct TYPE_13__ {int * am_fh3_data; int am_fh3_length; } ;
struct TYPE_14__ {TYPE_1__ object; } ;
struct TYPE_15__ {TYPE_2__ ok; } ;
struct TYPE_20__ {TYPE_6__ dr_u; int dr_status; int am_fh3_length; TYPE_3__ res_u; int * am_fh3_data; int status; } ;
typedef TYPE_8__ nfsdiropres ;
struct TYPE_16__ {int v2; TYPE_8__ v3; } ;
struct TYPE_21__ {scalar_t__ fh_nfs_version; scalar_t__ fh_wchan; void* fh_error; int fh_path; TYPE_7__* fh_fs; TYPE_4__ fh_nfs_handle; void* fh_status; } ;
typedef TYPE_9__ fh_cache ;
typedef int am_nfs_fh3 ;
typedef TYPE_8__ am_LOOKUP3res ;
typedef int XDRPROC_T_TYPE ;
struct TYPE_19__ {int fs_host; } ;


 void* EACCES ;
 int NFS_FHSIZE ;
 scalar_t__ NFS_VERSION3 ;
 int XLOG_USER ;
 int dlog (char*,unsigned long,...) ;
 TYPE_9__* find_nfs_fhandle_cache (int ,int) ;
 int memmove (int *,int *,int ) ;
 int memset (TYPE_8__*,int ,int) ;
 void* pickup_rpc_reply (int ,int,int ,int ) ;
 int plog (int ,char*,int ,int ) ;
 void* unx_error (int ) ;
 int wakeup (scalar_t__) ;
 scalar_t__ xdr_am_LOOKUP3res ;
 scalar_t__ xdr_diropres ;

__attribute__((used)) static void
got_nfs_fh_webnfs(voidp pkt, int len, struct sockaddr_in *sa, struct sockaddr_in *ia, opaque_t arg, int done)
{
  fh_cache *fp;
  nfsdiropres res;




  fp = find_nfs_fhandle_cache(arg, done);
  if (!fp)
    return;
    memset(&res, 0, sizeof(res));
    fp->fh_error = pickup_rpc_reply(pkt, len, (voidp) &res,
        (XDRPROC_T_TYPE) xdr_diropres);
    fp->fh_status = unx_error(res.dr_status);
    memmove(&fp->fh_nfs_handle.v2, &res.dr_u.dr_drok_u.drok_fhandle, NFS_FHSIZE);




  if (!fp->fh_error) {
    dlog("got filehandle for %s:%s", fp->fh_fs->fs_host, fp->fh_path);
  } else {
    plog(XLOG_USER, "filehandle denied for %s:%s", fp->fh_fs->fs_host, fp->fh_path);





    fp->fh_error = EACCES;
  }




  if (fp->fh_wchan) {
    dlog("Calling wakeup on %#lx", (unsigned long) fp->fh_wchan);
    wakeup(fp->fh_wchan);
  }
}
