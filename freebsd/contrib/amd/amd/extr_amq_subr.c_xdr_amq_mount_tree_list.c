
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ voidp ;
typedef int u_int ;
typedef int bool_t ;
typedef int amq_mount_tree_p ;
struct TYPE_3__ {int amq_mount_tree_list_len; int amq_mount_tree_list_val; } ;
typedef TYPE_1__ amq_mount_tree_list ;
typedef int XDRPROC_T_TYPE ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 scalar_t__ xdr_amq_mount_tree_p ;
 int xdr_array (int *,char**,int *,int ,int,int ) ;

bool_t
xdr_amq_mount_tree_list(XDR *xdrs, amq_mount_tree_list *objp)
{
  if (!xdr_array(xdrs,
   (char **) ((voidp) &objp->amq_mount_tree_list_val),
   (u_int *) &objp->amq_mount_tree_list_len,
   ~0,
   sizeof(amq_mount_tree_p),
   (XDRPROC_T_TYPE) xdr_amq_mount_tree_p)) {
    return (FALSE);
  }
  return (TRUE);
}
