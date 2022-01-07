
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int mf_flags; } ;
typedef TYPE_4__ mntfs ;
struct TYPE_12__ {int am_flags; TYPE_2__* am_parent; int am_ttl; int am_path; TYPE_3__* am_al; } ;
typedef TYPE_5__ am_node ;
struct TYPE_10__ {TYPE_4__* al_mnt; } ;
struct TYPE_8__ {int na_mtime; } ;
struct TYPE_9__ {TYPE_1__ am_fattr; } ;


 int AMF_NOTIMEOUT ;
 int AMF_ROOT ;
 int AMQ_UMNT_FAILED ;
 int EBUSY ;
 int MFF_MOUNTING ;
 int MFF_UNMOUNTING ;
 int XLOG_INFO ;
 int XLOG_WARNING ;
 int clocktime (int *) ;
 int notify_child (TYPE_5__*,int ,int ,int ) ;
 int plog (int ,char*,int ) ;
 int reschedule_timeout_mp () ;

void
forcibly_timeout_mp(am_node *mp)
{
  mntfs *mf = mp->am_al->al_mnt;



  if (mf && ((mp->am_flags & AMF_ROOT) ||
      (mf->mf_flags & (MFF_MOUNTING | MFF_UNMOUNTING)))) {





    if (mf->mf_flags & MFF_UNMOUNTING)
      plog(XLOG_WARNING, "node %s is currently being unmounted, ignoring timeout request", mp->am_path);
    else {
      plog(XLOG_WARNING, "ignoring timeout request for active node %s", mp->am_path);
      notify_child(mp, AMQ_UMNT_FAILED, EBUSY, 0);
    }
  } else {
    plog(XLOG_INFO, "\"%s\" forcibly timed out", mp->am_path);
    mp->am_flags &= ~AMF_NOTIMEOUT;
    mp->am_ttl = clocktime(((void*)0));





    clocktime(&mp->am_parent->am_fattr.na_mtime);
    reschedule_timeout_mp();
  }
}
