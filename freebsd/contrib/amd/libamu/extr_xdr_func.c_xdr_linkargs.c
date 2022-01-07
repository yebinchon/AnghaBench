
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int la_to; int la_fhandle; } ;
typedef TYPE_1__ nfslinkargs ;
typedef int bool_t ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_diropargs (int *,int *) ;
 int xdr_nfs_fh (int *,int *) ;

bool_t
xdr_linkargs(XDR *xdrs, nfslinkargs *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_linkargs:");

  if (!xdr_nfs_fh(xdrs, &objp->la_fhandle)) {
    return (FALSE);
  }
  if (!xdr_diropargs(xdrs, &objp->la_to)) {
    return (FALSE);
  }
  return (TRUE);
}
