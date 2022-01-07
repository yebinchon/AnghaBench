
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ns_attr_u; } ;
struct TYPE_5__ {int ns_status; TYPE_1__ ns_u; } ;
typedef TYPE_2__ nfsattrstat ;
typedef int bool_t ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;

 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_fattr (int *,int *) ;
 int xdr_nfsstat (int *,int*) ;

bool_t
xdr_attrstat(XDR *xdrs, nfsattrstat *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_attrstat:");

  if (!xdr_nfsstat(xdrs, &objp->ns_status)) {
    return (FALSE);
  }
  switch (objp->ns_status) {
  case 128:
    if (!xdr_fattr(xdrs, &objp->ns_u.ns_attr_u)) {
      return (FALSE);
    }
    break;
  default:
    break;
  }
  return (TRUE);
}
