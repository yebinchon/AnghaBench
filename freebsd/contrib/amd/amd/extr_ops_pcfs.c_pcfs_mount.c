
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mf_flags; int mf_mopts; int mf_info; int mf_mount; } ;
typedef TYPE_1__ mntfs ;
typedef int am_node ;


 int MFF_ON_AUTOFS ;
 int XLOG_ERROR ;
 int errno ;
 int mount_pcfs (int ,int ,int ,int) ;
 int plog (int ,char*) ;

__attribute__((used)) static int
pcfs_mount(am_node *am, mntfs *mf)
{
  int on_autofs = mf->mf_flags & MFF_ON_AUTOFS;
  int error;

  error = mount_pcfs(mf->mf_mount, mf->mf_info, mf->mf_mopts, on_autofs);
  if (error) {
    errno = error;
    plog(XLOG_ERROR, "mount_pcfs: %m");
    return error;
  }

  return 0;
}
