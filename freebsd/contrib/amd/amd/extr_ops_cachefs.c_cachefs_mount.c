
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mf_flags; int mf_mopts; TYPE_1__* mf_fo; int mf_mount; } ;
typedef TYPE_2__ mntfs ;
typedef int am_node ;
struct TYPE_4__ {int opt_cachedir; int opt_rfs; } ;


 int ESRCH ;
 int MFF_ON_AUTOFS ;
 int XLOG_ERROR ;
 int errno ;
 int mount_cachefs (int ,int ,int ,int ,int) ;
 int plog (int ,char*) ;

__attribute__((used)) static int
cachefs_mount(am_node *am, mntfs *mf)
{
  int on_autofs = mf->mf_flags & MFF_ON_AUTOFS;
  int error;

  error = mount_cachefs(mf->mf_mount,
   mf->mf_fo->opt_rfs,
   mf->mf_fo->opt_cachedir,
   mf->mf_mopts,
   on_autofs);
  if (error) {
    errno = error;

    if (error == ESRCH)
      plog(XLOG_ERROR, "mount_cachefs: options to no match: %m");
    else
      plog(XLOG_ERROR, "mount_cachefs: %m");
    return error;
  }

  return 0;
}
