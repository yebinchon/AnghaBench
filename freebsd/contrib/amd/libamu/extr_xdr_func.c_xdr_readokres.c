
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int raok_len_u; int raok_val_u; } ;
struct TYPE_5__ {TYPE_1__ raok_u; int raok_attributes; } ;
typedef TYPE_2__ nfsreadokres ;
typedef int bool_t ;
typedef int XDR ;


 int D_XDRTRACE ;
 int FALSE ;
 int NFS_MAXDATA ;
 int TRUE ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 int plog (int ,char*) ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_fattr (int *,int *) ;

bool_t
xdr_readokres(XDR *xdrs, nfsreadokres *objp)
{
  if (amuDebug(D_XDRTRACE))
    plog(XLOG_DEBUG, "xdr_readokres:");

  if (!xdr_fattr(xdrs, &objp->raok_attributes)) {
    return (FALSE);
  }
  if (!xdr_bytes(xdrs,
   (char **) & objp->raok_u.raok_val_u,
   (u_int *) & objp->raok_u.raok_len_u,
   NFS_MAXDATA)) {
    return (FALSE);
  }
  return (TRUE);
}
