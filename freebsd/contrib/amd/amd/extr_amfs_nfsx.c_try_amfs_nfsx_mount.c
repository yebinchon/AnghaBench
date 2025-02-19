
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amfs_nfsx {int * nx_mp; } ;
typedef scalar_t__ opaque_t ;
struct TYPE_5__ {TYPE_1__* mf_ops; scalar_t__ mf_private; } ;
typedef TYPE_2__ mntfs ;
typedef int am_node ;
struct TYPE_4__ {int (* mount_fs ) (int *,TYPE_2__*) ;} ;


 int stub1 (int *,TYPE_2__*) ;

__attribute__((used)) static int
try_amfs_nfsx_mount(opaque_t mv)
{
  mntfs *mf = (mntfs *) mv;
  struct amfs_nfsx *nx = (struct amfs_nfsx *) mf->mf_private;
  am_node *mp = nx->nx_mp;
  int error;

  error = mf->mf_ops->mount_fs(mp, mf);

  return error;
}
