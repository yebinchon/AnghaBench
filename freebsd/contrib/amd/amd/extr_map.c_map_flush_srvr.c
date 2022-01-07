
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int fs_host; } ;
typedef TYPE_3__ fserver ;
struct TYPE_10__ {int am_ttl; int am_path; TYPE_1__* am_al; } ;
typedef TYPE_4__ am_node ;
struct TYPE_8__ {TYPE_3__* mf_server; } ;
struct TYPE_7__ {TYPE_2__* al_mnt; } ;


 int XLOG_INFO ;
 int clocktime (int *) ;
 TYPE_4__** exported_ap ;
 int last_used_map ;
 int plog (int ,char*,int ,int ) ;
 int reschedule_timeout_mp () ;

void
map_flush_srvr(fserver *fs)
{
  int i;
  int done = 0;

  for (i = last_used_map; i >= 0; --i) {
    am_node *mp = exported_ap[i];

    if (mp && mp->am_al->al_mnt && mp->am_al->al_mnt->mf_server == fs) {
      plog(XLOG_INFO, "Flushed %s; dependent on %s", mp->am_path, fs->fs_host);
      mp->am_ttl = clocktime(((void*)0));
      done = 1;
    }
  }
  if (done)
    reschedule_timeout_mp();
}
