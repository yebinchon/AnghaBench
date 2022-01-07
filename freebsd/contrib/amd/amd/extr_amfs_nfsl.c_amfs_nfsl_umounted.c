
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mf_flags; } ;
typedef TYPE_1__ mntfs ;
struct TYPE_9__ {int (* umounted ) (TYPE_1__*) ;} ;
struct TYPE_8__ {int (* umounted ) (TYPE_1__*) ;} ;


 int MFF_NFSLINK ;
 TYPE_6__ amfs_link_ops ;
 TYPE_4__ nfs_ops ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static void
amfs_nfsl_umounted(mntfs *mf)
{
  if (mf->mf_flags & MFF_NFSLINK) {
    if (amfs_link_ops.umounted)
      amfs_link_ops.umounted(mf);
  } else {
    if (nfs_ops.umounted)
      nfs_ops.umounted(mf);
  }
}
