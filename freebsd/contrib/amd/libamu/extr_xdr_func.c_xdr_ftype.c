
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nfsftype ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_enum (int *,int *) ;

bool_t
xdr_ftype(XDR *xdrs, nfsftype *objp)
{
  enum_t local_obj = *objp;

  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_ftype:");

  if (!xdr_enum(xdrs, &local_obj)) {
    return (FALSE);
  }
  return (TRUE);
}
