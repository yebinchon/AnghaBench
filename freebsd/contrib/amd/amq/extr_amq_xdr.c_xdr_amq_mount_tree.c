
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ voidp ;
typedef int bool_t ;
struct TYPE_3__ {int mt_child; int mt_next; int mt_statfs; int mt_readlink; int mt_readdir; int mt_lookup; int mt_getattr; int mt_mountuid; int mt_mounttime; int mt_type; int mt_mountpoint; int mt_directory; int mt_mountinfo; } ;
typedef TYPE_1__ amq_mount_tree ;
typedef int XDRPROC_T_TYPE ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_amq_string (int *,int *) ;
 int xdr_int (int *,int *) ;
 int xdr_pointer (int *,char**,int,int ) ;
 int xdr_time_type (int *,int *) ;
 int xdr_u_short (int *,int *) ;

bool_t
xdr_amq_mount_tree(XDR *xdrs, amq_mount_tree *objp)
{

  if (!xdr_amq_string(xdrs, &objp->mt_mountinfo)) {
    return (FALSE);
  }

  if (!xdr_amq_string(xdrs, &objp->mt_directory)) {
    return (FALSE);
  }

  if (!xdr_amq_string(xdrs, &objp->mt_mountpoint)) {
    return (FALSE);
  }

  if (!xdr_amq_string(xdrs, &objp->mt_type)) {
    return (FALSE);
  }

  if (!xdr_time_type(xdrs, &objp->mt_mounttime)) {
    return (FALSE);
  }

  if (!xdr_u_short(xdrs, &objp->mt_mountuid)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->mt_getattr)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->mt_lookup)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->mt_readdir)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->mt_readlink)) {
    return (FALSE);
  }

  if (!xdr_int(xdrs, &objp->mt_statfs)) {
    return (FALSE);
  }

  if (!xdr_pointer(xdrs,
     (char **) ((voidp) &objp->mt_next),
     sizeof(amq_mount_tree),
     (XDRPROC_T_TYPE) xdr_amq_mount_tree)) {
    return (FALSE);
  }

  if (!xdr_pointer(xdrs,
     (char **) ((voidp) &objp->mt_child),
     sizeof(amq_mount_tree),
     (XDRPROC_T_TYPE) xdr_amq_mount_tree)) {
    return (FALSE);
  }

  return (TRUE);
}
