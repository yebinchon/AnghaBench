
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef scalar_t__ time_t ;
typedef int opaque_t ;
struct TYPE_20__ {int mf_flags; int mf_refc; int mf_fsflags; int mf_mount; TYPE_12__* mf_server; } ;
typedef TYPE_6__ mntfs ;
struct TYPE_21__ {int am_path; TYPE_5__* am_parent; TYPE_1__* am_al; } ;
typedef TYPE_7__ am_node ;
struct TYPE_13__ {scalar_t__ nt_seconds; } ;
struct TYPE_16__ {TYPE_10__ na_mtime; } ;
struct TYPE_17__ {TYPE_2__ ns_attr_u; } ;
struct TYPE_18__ {TYPE_3__ ns_u; } ;
struct TYPE_19__ {TYPE_4__ am_attr; } ;
struct TYPE_15__ {TYPE_6__* al_mnt; } ;
struct TYPE_14__ {int fs_host; } ;


 int AMQ_UMNT_SERVER ;
 int FSRV_ISUP (TYPE_12__*) ;
 int FS_UBACKGROUND ;
 int MFF_IS_AUTOFS ;
 int MFF_LOGDOWN ;
 int MFF_MOUNTED ;
 int MFF_ON_AUTOFS ;
 int MFF_UNMOUNTING ;
 int XLOG_INFO ;
 int XLOG_STATS ;
 int autofs_release_mp (TYPE_7__*) ;
 int clocktime (TYPE_10__*) ;
 int dlog (char*,...) ;
 int free_map_if_success (int ,int ,int ) ;
 int notify_child (TYPE_7__*,int ,int ,int ) ;
 int plog (int ,char*,int ,int ,...) ;
 int run_task (int (*) (int ),int ,int (*) (int ,int ,int ),int ) ;
 int unmount_node (int ) ;

int
unmount_mp(am_node *mp)
{
  int was_backgrounded = 0;
  mntfs *mf = mp->am_al->al_mnt;
  if (mp->am_parent) {
    time_t last = mp->am_parent->am_attr.ns_u.ns_attr_u.na_mtime.nt_seconds;
    clocktime(&mp->am_parent->am_attr.ns_u.ns_attr_u.na_mtime);

    if (last == (time_t) mp->am_parent->am_attr.ns_u.ns_attr_u.na_mtime.nt_seconds)
      mp->am_parent->am_attr.ns_u.ns_attr_u.na_mtime.nt_seconds++;
  }


  if (mf->mf_refc == 1 && !FSRV_ISUP(mf->mf_server)) {



    if (!(mf->mf_flags & MFF_LOGDOWN)) {

      plog(XLOG_STATS, "file server %s is down - timeout of \"%s\" ignored", mf->mf_server->fs_host, mp->am_path);
      mf->mf_flags |= MFF_LOGDOWN;
    }
    notify_child(mp, AMQ_UMNT_SERVER, 0, 0);
    return 0;
  }

  dlog("\"%s\" on %s timed out", mp->am_path, mf->mf_mount);
  mf->mf_flags |= MFF_UNMOUNTING;






  if ((mf->mf_fsflags & FS_UBACKGROUND) &&
      (mf->mf_flags & MFF_MOUNTED) &&
     !(mf->mf_flags & MFF_ON_AUTOFS)) {
    dlog("Trying unmount in background");
    run_task(unmount_node, (opaque_t) mp,
      free_map_if_success, (opaque_t) mp);
    was_backgrounded = 1;
  } else {
    dlog("Trying unmount in foreground");
    free_map_if_success(unmount_node((opaque_t) mp), 0, (opaque_t) mp);
    dlog("unmount attempt done");
  }

  return was_backgrounded;
}
