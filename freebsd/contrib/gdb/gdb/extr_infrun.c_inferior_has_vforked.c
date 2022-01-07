
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int related_pid; } ;
struct target_waitstatus {scalar_t__ kind; TYPE_1__ value; } ;
typedef int ptid_t ;


 scalar_t__ TARGET_WAITKIND_VFORKED ;
 int get_last_target_status (int *,struct target_waitstatus*) ;
 int ptid_get_pid (int ) ;

int
inferior_has_vforked (int pid, int *child_pid)
{
  struct target_waitstatus last;
  ptid_t last_ptid;

  get_last_target_status (&last_ptid, &last);

  if (last.kind != TARGET_WAITKIND_VFORKED)
    return 0;

  if (ptid_get_pid (last_ptid) != pid)
    return 0;

  *child_pid = last.value.related_pid;
  return 1;
}
