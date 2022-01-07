
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gr_next; int gr_name; } ;
typedef TYPE_1__ groupnode ;
typedef int bool_t ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_groups (int *,int *) ;
 int xdr_name (int *,int *) ;

bool_t
xdr_groupnode(XDR *xdrs, groupnode *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_groupnode:");

  if (!xdr_name(xdrs, &objp->gr_name)) {
    return (FALSE);
  }
  if (!xdr_groups(xdrs, &objp->gr_next)) {
    return (FALSE);
  }
  return (TRUE);
}
