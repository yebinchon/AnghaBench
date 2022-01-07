
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sla_attributes; int sla_to; int sla_from; } ;
typedef TYPE_1__ nfssymlinkargs ;
typedef int bool_t ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_diropargs (int *,int *) ;
 int xdr_nfspath (int *,int *) ;
 int xdr_sattr (int *,int *) ;

bool_t
xdr_symlinkargs(XDR *xdrs, nfssymlinkargs *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_symlinkargs:");

  if (!xdr_diropargs(xdrs, &objp->sla_from)) {
    return (FALSE);
  }
  if (!xdr_nfspath(xdrs, &objp->sla_to)) {
    return (FALSE);
  }
  if (!xdr_sattr(xdrs, &objp->sla_attributes)) {
    return (FALSE);
  }
  return (TRUE);
}
