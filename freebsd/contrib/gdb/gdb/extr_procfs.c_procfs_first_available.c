
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_2__ {int pid; } ;


 int pid_to_ptid (int) ;
 TYPE_1__* procinfo_list ;

ptid_t
procfs_first_available (void)
{
  return pid_to_ptid (procinfo_list ? procinfo_list->pid : -1);
}
