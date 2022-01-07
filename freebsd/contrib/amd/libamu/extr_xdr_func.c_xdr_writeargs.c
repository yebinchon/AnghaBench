
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int wra_len_u; int wra_val_u; } ;
struct TYPE_5__ {TYPE_1__ wra_u; int wra_totalcount; int wra_offset; int wra_beginoffset; int wra_fhandle; } ;
typedef TYPE_2__ nfswriteargs ;
typedef int bool_t ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int NFS_MAXDATA ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_nfs_fh (int *,int *) ;
 int xdr_u_int (int *,int *) ;

bool_t
xdr_writeargs(XDR *xdrs, nfswriteargs *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_writeargs:");

  if (!xdr_nfs_fh(xdrs, &objp->wra_fhandle)) {
    return (FALSE);
  }
  if (!xdr_u_int(xdrs, &objp->wra_beginoffset)) {
    return (FALSE);
  }
  if (!xdr_u_int(xdrs, &objp->wra_offset)) {
    return (FALSE);
  }
  if (!xdr_u_int(xdrs, &objp->wra_totalcount)) {
    return (FALSE);
  }
  if (!xdr_bytes(xdrs,
   (char **) & objp->wra_u.wra_val_u,
   (u_int *) & objp->wra_u.wra_len_u,
   NFS_MAXDATA)) {
    return (FALSE);
  }
  return (TRUE);
}
