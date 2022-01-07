
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bool_t ;
struct TYPE_3__ {int as_uerr; int as_merr; int as_mok; int as_stale; int as_drops; } ;
typedef TYPE_1__ amq_mount_stats ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_int (int *,int *) ;

bool_t
xdr_amq_mount_stats(XDR *xdrs, amq_mount_stats *objp)
{

  if (!xdr_int(xdrs, &objp->as_drops)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->as_stale)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->as_mok)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->as_merr)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->as_uerr)) {
    return (FALSE);
  }

  return (TRUE);
}
