
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rv ;
typedef int au_etype ;
struct TYPE_5__ {int au_signal; int au_errno; int au_etype; } ;
typedef TYPE_1__ amq_sync_umnt ;
struct TYPE_6__ {int* am_fd; } ;
typedef TYPE_2__ am_node ;


 int XLOG_INFO ;
 int close (int) ;
 int plog (int ,char*,int,int) ;
 int write (int,TYPE_1__*,int) ;

void
notify_child(am_node *mp, au_etype au_etype, int au_errno, int au_signal)
{
  amq_sync_umnt rv;
  int err;

  if (mp->am_fd[1] >= 0) {
    rv.au_etype = au_etype;
    rv.au_signal = au_signal;
    rv.au_errno = au_errno;

    err = write(mp->am_fd[1], &rv, sizeof(rv));

    if (err < sizeof(rv))
      plog(XLOG_INFO, "notify_child: write returned %d instead of %d.",
    err, (int) sizeof(rv));
    close(mp->am_fd[1]);
    mp->am_fd[1] = -1;
  }
}
