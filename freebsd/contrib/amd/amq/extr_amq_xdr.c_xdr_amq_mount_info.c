
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bool_t ;
struct TYPE_3__ {int mi_up; int mi_refc; int mi_error; int mi_fserver; int mi_mountinfo; int mi_mountpt; int mi_type; } ;
typedef TYPE_1__ amq_mount_info ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_amq_string (int *,int *) ;
 int xdr_int (int *,int *) ;

bool_t
xdr_amq_mount_info(XDR *xdrs, amq_mount_info *objp)
{

  if (!xdr_amq_string(xdrs, &objp->mi_type)) {
    return (FALSE);
  }

  if (!xdr_amq_string(xdrs, &objp->mi_mountpt)) {
    return (FALSE);
  }

  if (!xdr_amq_string(xdrs, &objp->mi_mountinfo)) {
    return (FALSE);
  }

  if (!xdr_amq_string(xdrs, &objp->mi_fserver)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->mi_error)) {
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
