
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ opaque_t ;
struct TYPE_3__ {int mf_prfree; int mf_info; scalar_t__ mf_private; int mf_mount; } ;
typedef TYPE_1__ mntfs ;
typedef int am_node ;


 scalar_t__ mapc_find (int ,char*,int *,int *) ;
 int mapc_free ;
 int pid_fsname ;
 int strealloc (int ,int ) ;

__attribute__((used)) static int
amfs_root_mount(am_node *mp, mntfs *mf)
{
  mf->mf_mount = strealloc(mf->mf_mount, pid_fsname);
  mf->mf_private = (opaque_t) mapc_find(mf->mf_info, "", ((void*)0), ((void*)0));
  mf->mf_prfree = mapc_free;

  return 0;
}
