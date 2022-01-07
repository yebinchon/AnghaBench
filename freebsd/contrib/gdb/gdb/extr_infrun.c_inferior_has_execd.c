
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int execd_pathname; } ;
struct target_waitstatus {scalar_t__ kind; TYPE_1__ value; } ;
typedef int ptid_t ;


 scalar_t__ TARGET_WAITKIND_EXECD ;
 int get_last_target_status (int *,struct target_waitstatus*) ;
 int ptid_get_pid (int ) ;
 char* xstrdup (int ) ;

int
inferior_has_execd (int pid, char **execd_pathname)
{
  struct target_waitstatus last;
  ptid_t last_ptid;

  get_last_target_status (&last_ptid, &last);

  if (last.kind != TARGET_WAITKIND_EXECD)
    return 0;

  if (ptid_get_pid (last_ptid) != pid)
    return 0;

  *execd_pathname = xstrdup (last.value.execd_pathname);
  return 1;
}
