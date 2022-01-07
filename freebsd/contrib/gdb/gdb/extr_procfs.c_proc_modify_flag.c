
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pid; scalar_t__ status_valid; int ctl_fd; } ;
typedef TYPE_1__ procinfo ;
typedef long procfs_ctl_t ;
typedef int arg ;


 long FLAG_RESET ;
 long FLAG_SET ;
 long GDBRESET ;
 long PCSET ;
 int PIOCRESET ;
 int PIOCRFORK ;
 int PIOCRRLC ;
 int PIOCSET ;
 int PIOCSFORK ;
 int PIOCSRLC ;
 long PR_ASYNC ;

 long PR_KLC ;

 TYPE_1__* find_procinfo_or_die (scalar_t__,int ) ;
 scalar_t__ ioctl (int ,int ,long*) ;
 int warning (char*,char*,char*) ;
 int write (int ,void*,int) ;

__attribute__((used)) static int
proc_modify_flag (procinfo *pi, long flag, long mode)
{
  long win = 0;
  if (pi->pid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);
  pi->status_valid = 0;

  if (!win)
    warning ("procfs: modify_flag failed to turn %s %s",
      flag == 129 ? "PR_FORK" :
      flag == 128 ? "PR_RLC" :






      "<unknown flag>",
      mode == FLAG_RESET ? "off" : "on");

  return win;
}
