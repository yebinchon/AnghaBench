
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sag_attributes; int sag_fhandle; } ;
typedef TYPE_1__ nfssattrargs ;
typedef int bool_t ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_nfs_fh (int *,int *) ;
 int xdr_sattr (int *,int *) ;

bool_t
xdr_sattrargs(XDR *xdrs, nfssattrargs *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_sattrargs:");

  if (!xdr_nfs_fh(xdrs, &objp->sag_fhandle)) {
    return (FALSE);
  }
  if (!xdr_sattr(xdrs, &objp->sag_attributes)) {
    return (FALSE);
  }
  return (TRUE);
}
