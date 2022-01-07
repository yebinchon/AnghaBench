
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sival_ptr; } ;
struct sigevent {int sigev_priority; int flags; TYPE_1__ sigev_value; scalar_t__ sigev_code; int sigev_signo; int sigev_notify; } ;
typedef int status ;
typedef int ptid_t ;
typedef struct sigevent procfs_status ;
typedef int event ;


 int DCMD_PROC_EVENT ;
 int DCMD_PROC_STATUS ;
 int DCMD_PROC_STOP ;
 scalar_t__ EOK ;
 int O_RDWR ;
 int PATH_MAX ;
 int PIDGET (int ) ;
 int SIGCONT ;
 int SIGEV_SIGNAL_THREAD ;
 int SIGUSR1 ;
 int SignalKill (int ,int,int ,int ,int ,int ) ;
 int _DEBUG_FLAG_STOPPED ;
 int attach_flag ;
 int ctl_fd ;
 scalar_t__ devctl (int,int ,struct sigevent*,int,int ) ;
 char* errno ;
 int error (char*,...) ;
 int nto_init_solib_absolute_prefix () ;
 int nto_node () ;
 char* nto_procfs_path ;
 int open (char*,int ) ;
 int safe_strerror (char*) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static ptid_t
do_attach (ptid_t ptid)
{
  procfs_status status;
  struct sigevent event;
  char path[PATH_MAX];

  snprintf (path, PATH_MAX - 1, "%s/%d/as", nto_procfs_path, PIDGET (ptid));
  ctl_fd = open (path, O_RDWR);
  if (ctl_fd == -1)
    error ("Couldn't open proc file %s, error %d (%s)", path, errno,
    safe_strerror (errno));
  if (devctl (ctl_fd, DCMD_PROC_STOP, &status, sizeof (status), 0) != EOK)
    error ("Couldn't stop process");


  event.sigev_notify = SIGEV_SIGNAL_THREAD;
  event.sigev_signo = SIGUSR1;
  event.sigev_code = 0;
  event.sigev_value.sival_ptr = ((void*)0);
  event.sigev_priority = -1;
  devctl (ctl_fd, DCMD_PROC_EVENT, &event, sizeof (event), 0);

  if (devctl (ctl_fd, DCMD_PROC_STATUS, &status, sizeof (status), 0) == EOK
      && status.flags & _DEBUG_FLAG_STOPPED)
    SignalKill (nto_node(), PIDGET (ptid), 0, SIGCONT, 0, 0);
  attach_flag = 1;
  nto_init_solib_absolute_prefix ();
  return ptid;
}
