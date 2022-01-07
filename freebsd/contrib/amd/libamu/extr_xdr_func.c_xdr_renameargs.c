
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rna_to; int rna_from; } ;
typedef TYPE_1__ nfsrenameargs ;
typedef int bool_t ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_diropargs (int *,int *) ;

bool_t
xdr_renameargs(XDR *xdrs, nfsrenameargs *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_renameargs:");

  if (!xdr_diropargs(xdrs, &objp->rna_from)) {
    return (FALSE);
  }
  if (!xdr_diropargs(xdrs, &objp->rna_to)) {
    return (FALSE);
  }
  return (TRUE);
}
