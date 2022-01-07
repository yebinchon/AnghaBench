
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int voidp ;
struct sockaddr_in {int dummy; } ;
struct TYPE_10__ {int * auth_flavors_val; } ;
struct TYPE_9__ {int * fhandle3_val; int fhandle3_len; } ;
struct TYPE_11__ {TYPE_2__ auth_flavors; TYPE_1__ fhandle; } ;
struct TYPE_12__ {TYPE_3__ mountinfo; } ;
struct fhstatus {int fhs_fh; int fhs_status; TYPE_4__ mountres3_u; int am_fh3_length; int * am_fh3_data; } ;
struct am_mountres3 {int fhs_fh; int fhs_status; TYPE_4__ mountres3_u; int am_fh3_length; int * am_fh3_data; } ;
typedef int res3 ;
typedef int res ;
typedef int opaque_t ;
struct TYPE_13__ {int v2; struct fhstatus v3; } ;
struct TYPE_15__ {scalar_t__ fh_nfs_version; scalar_t__ fh_wchan; void* fh_error; int fh_path; TYPE_6__* fh_fs; TYPE_5__ fh_nfs_handle; void* fh_status; } ;
typedef TYPE_7__ fh_cache ;
typedef int am_nfs_fh3 ;
typedef int XDRPROC_T_TYPE ;
struct TYPE_14__ {int fs_host; } ;


 void* EACCES ;
 int NFS_FHSIZE ;
 scalar_t__ NFS_VERSION3 ;
 int XFREE (int *) ;
 int XLOG_USER ;
 int dlog (char*,unsigned long,...) ;
 TYPE_7__* find_nfs_fhandle_cache (int ,int) ;
 int memmove (int *,int *,int ) ;
 int memset (struct fhstatus*,int ,int) ;
 void* pickup_rpc_reply (int ,int,int ,int ) ;
 int plog (int ,char*,int ,int ) ;
 void* unx_error (int ) ;
 int wakeup (scalar_t__) ;
 scalar_t__ xdr_am_mountres3 ;
 scalar_t__ xdr_fhstatus ;

__attribute__((used)) static void
got_nfs_fh_mount(voidp pkt, int len, struct sockaddr_in *sa, struct sockaddr_in *ia, opaque_t arg, int done)
{
  fh_cache *fp;
  struct fhstatus res;




  fp = find_nfs_fhandle_cache(arg, done);
  if (!fp)
    return;
    memset(&res, 0, sizeof(res));
    fp->fh_error = pickup_rpc_reply(pkt, len, (voidp) &res,
        (XDRPROC_T_TYPE) xdr_fhstatus);
    fp->fh_status = unx_error(res.fhs_status);
    memmove(&fp->fh_nfs_handle.v2, &res.fhs_fh, NFS_FHSIZE);




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
