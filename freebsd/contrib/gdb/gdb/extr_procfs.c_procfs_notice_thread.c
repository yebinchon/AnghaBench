
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_4__ {int tid; int pid; } ;
typedef TYPE_1__ procinfo ;


 int MERGEPID (int ,int ) ;
 int add_thread (int ) ;
 int in_thread_list (int ) ;

__attribute__((used)) static int
procfs_notice_thread (procinfo *pi, procinfo *thread, void *ptr)
{
  ptid_t gdb_threadid = MERGEPID (pi->pid, thread->tid);

  if (!in_thread_list (gdb_threadid))
    add_thread (gdb_threadid);

  return 0;
}
