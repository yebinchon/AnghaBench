
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct continuation {scalar_t__ start; int retry; scalar_t__* al; TYPE_1__* mp; } ;
typedef scalar_t__ opaque_t ;
struct TYPE_3__ {int am_path; } ;
typedef TYPE_1__ am_node ;


 scalar_t__ ALLOWED_MOUNT_TIME ;
 int ETIMEDOUT ;
 int FALSE ;
 int IN_PROGRESS (struct continuation*) ;
 int XLOG_INFO ;
 int amfs_bgmount (struct continuation*) ;
 scalar_t__ clocktime (int *) ;
 int dlog (char*,int ) ;
 int free_continuation (struct continuation*) ;
 int new_ttl (TYPE_1__*) ;
 int plog (int ,char*,int ) ;
 int reschedule_timeout_mp () ;

__attribute__((used)) static void
amfs_retry(int rc, int term, opaque_t arg)
{
  struct continuation *cp = (struct continuation *) arg;
  am_node *mp = cp->mp;
  int error = 0;

  dlog("Commencing retry for mount of %s", mp->am_path);

  new_ttl(mp);

  if ((cp->start + ALLOWED_MOUNT_TIME) < clocktime(((void*)0))) {





    plog(XLOG_INFO, "mount of \"%s\" has timed out", mp->am_path);
    error = ETIMEDOUT;
    while (*cp->al)
      cp->al++;

    cp->retry = FALSE;
  }
  if (error || !IN_PROGRESS(cp))
    error = amfs_bgmount(cp);
  else






    free_continuation(cp);

  reschedule_timeout_mp();
}
