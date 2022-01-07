
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int bool_t ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int MNTNAMLEN ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_name(XDR *xdrs, name *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_name:");

  if (!xdr_string(xdrs, objp, MNTNAMLEN)) {
    return (FALSE);
  }
  return (TRUE);
}
