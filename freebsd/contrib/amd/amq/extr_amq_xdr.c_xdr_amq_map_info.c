
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bool_t ;
struct TYPE_3__ {int mi_up; int mi_refc; int mi_reloads; int mi_nentries; int mi_flags; int mi_modify; int mi_wildcard; int mi_name; } ;
typedef TYPE_1__ amq_map_info ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_amq_string (int *,int *) ;
 int xdr_int (int *,int *) ;
 int xdr_time_type (int *,int *) ;

bool_t
xdr_amq_map_info(XDR *xdrs, amq_map_info *objp)
{
  if (!xdr_amq_string(xdrs, &objp->mi_name)) {
    return (FALSE);
  }

  if (!xdr_amq_string(xdrs, &objp->mi_wildcard)) {
    return (FALSE);
  }

  if (!xdr_time_type(xdrs, &objp->mi_modify)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->mi_flags)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->mi_nentries)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->mi_reloads)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->mi_refc)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->mi_up)) {
    return (FALSE);
  }

  return (TRUE);
}
