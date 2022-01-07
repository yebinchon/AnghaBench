
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int opaque_t ;
struct TYPE_9__ {int mf_flags; int mf_refc; scalar_t__ mf_error; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_10__ {scalar_t__ am_autofs_ttl; int am_flags; scalar_t__ am_ttl; int am_timeo_w; int am_child; TYPE_1__* am_al; } ;
typedef TYPE_3__ am_node ;
struct TYPE_11__ {int am_timeo_w; } ;
struct TYPE_8__ {TYPE_2__* al_mnt; } ;


 int AMF_NOTIMEOUT ;
 scalar_t__ Finishing ;
 int IGNORE_FLAGS ;
 int MFF_IS_AUTOFS ;
 int MFF_RSTKEEP ;
 int MFF_UNMOUNTING ;
 int MFF_WANTTIMO ;
 scalar_t__ NEVER ;
 int NumChildren ;
 scalar_t__ ONE_HOUR ;
 int XLOG_ERROR ;
 scalar_t__ amd_state ;
 int autofs_timeout_mp (TYPE_3__*) ;
 scalar_t__ clocktime (int *) ;
 int dlog (char*,...) ;
 TYPE_3__** exported_ap ;
 TYPE_5__ gopt ;
 int last_used_map ;
 int plog (int ,char*) ;
 scalar_t__ smallest_t (scalar_t__,scalar_t__) ;
 int timeout (scalar_t__,void (*) (int ),int *) ;
 int timeout_mp_id ;
 scalar_t__ unmount_mp (TYPE_3__*) ;

void
timeout_mp(opaque_t v)
{
  int i;
  time_t t = NEVER;
  time_t now = clocktime(((void*)0));
  int backoff = NumChildren / 4;

  dlog("Timing out automount points...");

  for (i = last_used_map; i >= 0; --i) {
    am_node *mp = exported_ap[i];
    mntfs *mf;




    if (!mp)
      continue;




    mf = mp->am_al->al_mnt;
    if (!mf)
      continue;
    if (mp->am_flags & AMF_NOTIMEOUT)
      continue;




    if ((mf->mf_flags & MFF_RSTKEEP) && mf->mf_refc == 1)
      continue;




    if (!(mf->mf_flags & IGNORE_FLAGS)) {
      int expired = 0;
      mf->mf_flags &= ~MFF_WANTTIMO;
      if (now >= mp->am_ttl) {
 if (!backoff) {
   expired = 1;






   if (mp->am_timeo_w < 4 * gopt.am_timeo_w)
     mp->am_timeo_w += gopt.am_timeo_w;
   mp->am_ttl = now + mp->am_timeo_w;

 } else {






   mp->am_ttl = now + backoff + 1;
 }
      }




      t = smallest_t(t, mp->am_ttl);

      if (!mp->am_child && mf->mf_error >= 0 && expired) {




 if (unmount_mp(mp)) {
   backoff = 2;
 }
      }
    } else if (mf->mf_flags & MFF_UNMOUNTING) {
      mf->mf_flags |= MFF_WANTTIMO;
    }
  }

  if (t == NEVER) {
    dlog("No further timeouts");
    t = now + ONE_HOUR;
  }






  if (t <= now) {
    t = now + 6;
    plog(XLOG_ERROR, "Got a zero interval in timeout_mp()!");
  }




  if ((int) amd_state >= (int) Finishing)
    t = now + 1;
  dlog("Next mount timeout in %lds", (long) (t - now));

  timeout_mp_id = timeout(t - now, timeout_mp, ((void*)0));
}
