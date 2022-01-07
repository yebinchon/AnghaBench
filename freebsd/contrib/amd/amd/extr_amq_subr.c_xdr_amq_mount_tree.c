
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ voidp ;
typedef int bool_t ;
typedef int amq_mount_tree ;
struct TYPE_2__ {int am_child; } ;
typedef TYPE_1__ am_node ;
typedef int XDRPROC_T_TYPE ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 scalar_t__ xdr_amq_mount_subtree ;
 int xdr_amq_mount_tree_node (int *,int *) ;
 int xdr_pointer (int *,char**,int,int ) ;

bool_t
xdr_amq_mount_tree(XDR *xdrs, amq_mount_tree *objp)
{
  am_node *mp = (am_node *) objp;
  am_node *mnil = ((void*)0);

  if (!xdr_amq_mount_tree_node(xdrs, objp)) {
    return (FALSE);
  }
  if (!xdr_pointer(xdrs,
     (char **) ((voidp) &mnil),
     sizeof(amq_mount_tree),
     (XDRPROC_T_TYPE) xdr_amq_mount_subtree)) {
    return (FALSE);
  }
  if (!xdr_pointer(xdrs,
     (char **) ((voidp) &mp->am_child),
     sizeof(amq_mount_tree),
     (XDRPROC_T_TYPE) xdr_amq_mount_subtree)) {
    return (FALSE);
  }
  return (TRUE);
}
