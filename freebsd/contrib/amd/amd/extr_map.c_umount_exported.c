
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int opaque_t ;
struct TYPE_10__ {int mf_flags; int mf_fsflags; int mf_mount; TYPE_1__* mf_server; } ;
typedef TYPE_3__ mntfs ;
struct TYPE_11__ {int am_flags; int am_timeo; scalar_t__ am_timeo_w; scalar_t__ am_ttl; TYPE_2__* am_al; scalar_t__ am_parent; int am_fattr; scalar_t__ am_child; } ;
typedef TYPE_4__ am_node ;
struct TYPE_12__ {int flags; } ;
struct TYPE_9__ {TYPE_3__* al_mnt; } ;
struct TYPE_8__ {int fs_flags; } ;


 int AMF_AUTOFS ;
 int AMF_NOTIMEOUT ;
 int AMF_ROOT ;
 int CFM_UNMOUNT_ON_EXIT ;
 int FSF_DOWN ;
 int FSF_VALID ;
 int FS_DIRECTORY ;
 int MFF_MKMNT ;
 int MFF_MOUNTED ;
 int MFF_RESTART ;
 int MFF_RSTKEEP ;
 int MFF_UNMOUNTING ;
 int NFDIR ;
 int XLOG_INFO ;
 int am_unmounted (TYPE_4__*) ;
 TYPE_4__** exported_ap ;
 TYPE_5__ gopt ;
 scalar_t__ immediate_abort ;
 int last_used_map ;
 int mk_fattr (int *,int ) ;
 int plog (int ,char*,int ) ;
 int unmount_mp (int ) ;

void
umount_exported(void)
{
  int i, work_done;

  do {
    work_done = 0;

    for (i = last_used_map; i >= 0; --i) {
      am_node *mp = exported_ap[i];
      mntfs *mf;

      if (!mp)
 continue;




      if (mp->am_child)
 continue;

      mf = mp->am_al->al_mnt;
      if (mf->mf_flags & MFF_UNMOUNTING) {






 continue;
      }

      if (!(mf->mf_fsflags & FS_DIRECTORY))





 mk_fattr(&mp->am_fattr, NFDIR);

      if ((--immediate_abort < 0 &&
    !(mp->am_flags & AMF_ROOT) && mp->am_parent) ||
   (mf->mf_flags & MFF_RESTART)) {

 work_done++;






 if (mf->mf_server &&
     (mf->mf_server->fs_flags & (FSF_DOWN | FSF_VALID)) != FSF_VALID)
   mf->mf_flags &= ~MFF_MKMNT;
 if (gopt.flags & CFM_UNMOUNT_ON_EXIT || mp->am_flags & AMF_AUTOFS) {
   plog(XLOG_INFO, "on-exit attempt to unmount %s", mf->mf_mount);




   unmount_mp((opaque_t) mp);
 } else {
   am_unmounted(mp);
 }
 if (!(mf->mf_flags & (MFF_UNMOUNTING|MFF_MOUNTED)))
   exported_ap[i] = ((void*)0);
      } else {



 mp->am_flags &= ~AMF_NOTIMEOUT;
 mp->am_al->al_mnt->mf_flags &= ~MFF_RSTKEEP;
 mp->am_ttl = 0;
 mp->am_timeo = 1;
 mp->am_timeo_w = 0;
      }
    }
  } while (work_done);
}
