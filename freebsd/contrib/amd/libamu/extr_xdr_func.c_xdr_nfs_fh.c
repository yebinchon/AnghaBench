
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int caddr_t ;
typedef int bool_t ;
struct TYPE_3__ {scalar_t__ fh_data; } ;
typedef TYPE_1__ am_nfs_fh ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int NFS_FHSIZE ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_opaque (int *,int ,int ) ;

bool_t
xdr_nfs_fh(XDR *xdrs, am_nfs_fh *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_nfs_fh:");

  if (!xdr_opaque(xdrs, (caddr_t) objp->fh_data, NFS_FHSIZE)) {
    return (FALSE);
  }
  return (TRUE);
}
