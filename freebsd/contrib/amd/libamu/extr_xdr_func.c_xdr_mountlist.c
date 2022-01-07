
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mountlist ;
typedef int mountbody ;
typedef int bool_t ;
typedef int XDRPROC_T_TYPE ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 scalar_t__ xdr_mountbody ;
 int xdr_pointer (int *,char**,int,int ) ;

bool_t
xdr_mountlist(XDR *xdrs, mountlist *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_mountlist:");

  if (!xdr_pointer(xdrs, (char **) objp, sizeof(mountbody), (XDRPROC_T_TYPE) xdr_mountbody)) {
    return (FALSE);
  }
  return (TRUE);
}
