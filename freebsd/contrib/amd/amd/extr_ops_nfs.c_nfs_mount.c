
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int mf_info; int mf_mount; scalar_t__ mf_private; int * mf_mopts; TYPE_1__* mf_server; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_11__ {int * mnt_opts; } ;
typedef TYPE_3__ mntent_t ;
struct TYPE_12__ {int am_flags; } ;
typedef TYPE_4__ am_node ;
typedef int am_nfs_handle_t ;
struct TYPE_9__ {int fs_version; } ;


 int AMF_SOFTLOOKUP ;
 int EINVAL ;
 int XLOG_ERROR ;
 scalar_t__ amu_hasmntopt (TYPE_3__*,char*) ;
 int dlog (char*) ;
 int errno ;
 int mount_nfs_fh (int *,int ,int ,TYPE_2__*) ;
 int plog (int ,char*,int ) ;

__attribute__((used)) static int
nfs_mount(am_node *am, mntfs *mf)
{
  int error = 0;
  mntent_t mnt;

  if (!mf->mf_private && mf->mf_server->fs_version != 4) {
    plog(XLOG_ERROR, "Missing filehandle for %s", mf->mf_info);
    return EINVAL;
  }

  if (mf->mf_mopts == ((void*)0)) {
    plog(XLOG_ERROR, "Missing mount options for %s", mf->mf_info);
    return EINVAL;
  }

  mnt.mnt_opts = mf->mf_mopts;
  if (amu_hasmntopt(&mnt, "softlookup") ||
      (amu_hasmntopt(&mnt, "soft") && !amu_hasmntopt(&mnt, "nosoftlookup")))
    am->am_flags |= AMF_SOFTLOOKUP;

  error = mount_nfs_fh((am_nfs_handle_t *) mf->mf_private,
         mf->mf_mount,
         mf->mf_info,
         mf);

  if (error) {
    errno = error;
    dlog("mount_nfs: %m");
  }

  return error;
}
