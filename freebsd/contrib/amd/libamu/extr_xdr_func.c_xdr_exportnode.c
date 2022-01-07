
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ex_next; int ex_groups; int ex_dir; } ;
typedef TYPE_1__ exportnode ;
typedef int bool_t ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_dirpath (int *,int *) ;
 int xdr_exports (int *,int *) ;
 int xdr_groups (int *,int *) ;

bool_t
xdr_exportnode(XDR *xdrs, exportnode *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_exportnode:");

  if (!xdr_dirpath(xdrs, &objp->ex_dir)) {
    return (FALSE);
  }
  if (!xdr_groups(xdrs, &objp->ex_groups)) {
    return (FALSE);
  }
  if (!xdr_exports(xdrs, &objp->ex_next)) {
    return (FALSE);
  }
  return (TRUE);
}
