
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bool_t ;
typedef int amq_mount_tree ;
struct TYPE_9__ {long s_mtime; int s_statfs; int s_readlink; int s_readdir; int s_lookup; int s_getattr; int s_uid; } ;
struct TYPE_10__ {TYPE_4__ am_stats; TYPE_3__* am_al; scalar_t__ am_link; scalar_t__ am_path; } ;
typedef TYPE_5__ am_node ;
typedef int XDR ;
struct TYPE_8__ {TYPE_2__* al_mnt; } ;
struct TYPE_7__ {TYPE_1__* mf_ops; scalar_t__ mf_mount; scalar_t__ mf_info; } ;
struct TYPE_6__ {scalar_t__ fs_type; } ;


 int FALSE ;
 int TRUE ;
 int xdr_amq_string (int *,scalar_t__*) ;
 int xdr_int (int *,int *) ;
 int xdr_long (int *,long*) ;
 int xdr_u_short (int *,int *) ;

bool_t
xdr_amq_mount_tree_node(XDR *xdrs, amq_mount_tree *objp)
{
  am_node *mp = (am_node *) objp;
  long mtime;

  if (!xdr_amq_string(xdrs, &mp->am_al->al_mnt->mf_info)) {
    return (FALSE);
  }
  if (!xdr_amq_string(xdrs, &mp->am_path)) {
    return (FALSE);
  }
  if (!xdr_amq_string(xdrs, mp->am_link ? &mp->am_link : &mp->am_al->al_mnt->mf_mount)) {
    return (FALSE);
  }
  if (!xdr_amq_string(xdrs, &mp->am_al->al_mnt->mf_ops->fs_type)) {
    return (FALSE);
  }
  mtime = mp->am_stats.s_mtime;
  if (!xdr_long(xdrs, &mtime)) {
    return (FALSE);
  }
  if (!xdr_u_short(xdrs, &mp->am_stats.s_uid)) {
    return (FALSE);
  }
  if (!xdr_int(xdrs, &mp->am_stats.s_getattr)) {
    return (FALSE);
  }
  if (!xdr_int(xdrs, &mp->am_stats.s_lookup)) {
    return (FALSE);
  }
  if (!xdr_int(xdrs, &mp->am_stats.s_readdir)) {
    return (FALSE);
  }
  if (!xdr_int(xdrs, &mp->am_stats.s_readlink)) {
    return (FALSE);
  }
  if (!xdr_int(xdrs, &mp->am_stats.s_statfs)) {
    return (FALSE);
  }
  return (TRUE);
}
