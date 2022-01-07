
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ opaque_t ;
struct TYPE_11__ {int mf_flags; int mf_refc; int mf_mount; TYPE_1__* mf_ops; int mf_info; } ;
typedef TYPE_3__ mntfs ;
struct TYPE_12__ {int am_flags; TYPE_2__* am_al; int am_path; } ;
typedef TYPE_4__ am_node ;
struct TYPE_10__ {TYPE_3__* al_mnt; } ;
struct TYPE_9__ {int (* umount_fs ) (TYPE_4__*,TYPE_3__*) ;} ;


 int AMF_AUTOFS ;
 int MFF_ERROR ;
 int autofs_umount_fs (TYPE_4__*,TYPE_3__*) ;
 int dlog (char*,int ,...) ;
 int errno ;
 int stub1 (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static int
unmount_node(opaque_t arg)
{
  am_node *mp = (am_node *) arg;
  mntfs *mf = mp->am_al->al_mnt;
  int error = 0;

  if (mf->mf_flags & MFF_ERROR) {



    dlog("No-op unmount of error node %s", mf->mf_info);
  } else {
    dlog("Unmounting <%s> <%s> (%s) flags %x",
  mp->am_path, mf->mf_mount, mf->mf_info, mf->mf_flags);





      if (mf->mf_refc == 1)
 error = mf->mf_ops->umount_fs(mp, mf);
  }


  mf = mp->am_al->al_mnt;
  if (error) {
    errno = error;
    dlog("%s: unmount: %m", mf->mf_mount);
  }

  return error;
}
