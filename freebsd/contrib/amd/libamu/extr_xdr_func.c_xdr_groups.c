
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int groups ;
typedef int groupnode ;
typedef int bool_t ;
typedef int XDRPROC_T_TYPE ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 scalar_t__ xdr_groupnode ;
 int xdr_pointer (int *,char**,int,int ) ;

bool_t
xdr_groups(XDR *xdrs, groups *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_groups:");

  if (!xdr_pointer(xdrs, (char **) objp, sizeof(groupnode), (XDRPROC_T_TYPE) xdr_groupnode)) {
    return (FALSE);
  }
  return (TRUE);
}
