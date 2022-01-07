
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bool_t ;
typedef int amq_sync_umnt ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_opaque (int *,char*,int) ;

bool_t
xdr_amq_sync_umnt(XDR *xdrs, amq_sync_umnt *objp)
{

  if (!xdr_opaque(xdrs, (char *) objp, sizeof(*objp))) {
    return (FALSE);
  }
  return (TRUE);
}
