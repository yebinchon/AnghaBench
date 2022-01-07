
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ wchan_t ;
typedef int u_short ;
struct TYPE_7__ {int np_error; int np_mountd_inval; int np_mountd; } ;
typedef TYPE_1__ nfs_private ;
struct TYPE_8__ {int fs_flags; scalar_t__ fs_private; } ;
typedef TYPE_2__ fserver ;


 int EWOULDBLOCK ;
 int FSF_WANT ;
 scalar_t__ FSRV_ISDOWN (TYPE_2__*) ;
 scalar_t__ FSRV_ISUP (TYPE_2__*) ;
 int abort () ;
 int recompute_portmap (TYPE_2__*) ;
 int sched_task (int ,scalar_t__,scalar_t__) ;
 int wakeup_task ;

int
get_mountd_port(fserver *fs, u_short *port, wchan_t wchan)
{
  int error = -1;

  if (FSRV_ISDOWN(fs))
    return EWOULDBLOCK;

  if (FSRV_ISUP(fs)) {
    nfs_private *np = (nfs_private *) fs->fs_private;
    if (np->np_error == 0) {
      *port = np->np_mountd;
      error = 0;
    } else {
      error = np->np_error;
    }







    switch (np->np_mountd_inval) {
    case 'Y':
      recompute_portmap(fs);
      break;
    case 'N':
      np->np_mountd_inval = 'Y';
      break;
    case 'P':
      break;
    default:
      abort();
    }
  }
  if (error < 0 && wchan && !(fs->fs_flags & FSF_WANT)) {
    fs->fs_flags |= FSF_WANT;
    sched_task(wakeup_task, wchan, (wchan_t) fs);
  }
  return error;
}
