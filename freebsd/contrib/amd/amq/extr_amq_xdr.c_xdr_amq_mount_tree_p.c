
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bool_t ;
typedef int amq_mount_tree_p ;
typedef int amq_mount_tree ;
typedef int XDRPROC_T_TYPE ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 scalar_t__ xdr_amq_mount_tree ;
 int xdr_pointer (int *,char**,int,int ) ;

bool_t
xdr_amq_mount_tree_p(XDR *xdrs, amq_mount_tree_p *objp)
{
  if (!xdr_pointer(xdrs,
     (char **) objp,
     sizeof(amq_mount_tree),
     (XDRPROC_T_TYPE) xdr_amq_mount_tree)) {
    return (FALSE);
  }
  return (TRUE);
}
