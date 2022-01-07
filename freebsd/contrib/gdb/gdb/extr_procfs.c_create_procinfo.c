
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int pid; int tid; struct TYPE_9__* thread_list; struct TYPE_9__* next; int pathname; void* saved_exitset; void* saved_entryset; } ;
typedef TYPE_1__ procinfo ;


 char* MAIN_PROC_NAME_FMT ;
 TYPE_1__* find_procinfo (int,int) ;
 TYPE_1__* find_procinfo_or_die (int,int ) ;
 int load_syscalls (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* procinfo_list ;
 int sprintf (int ,char*,int,...) ;
 void* sysset_t_alloc (TYPE_1__*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static procinfo *
create_procinfo (int pid, int tid)
{
  procinfo *pi, *parent;

  if ((pi = find_procinfo (pid, tid)))
    return pi;


  if (tid != 0)
    parent = find_procinfo_or_die (pid, 0);



  pi = (procinfo *) xmalloc (sizeof (procinfo));
  memset (pi, 0, sizeof (procinfo));
  pi->pid = pid;
  pi->tid = tid;





  pi->saved_entryset = sysset_t_alloc (pi);
  pi->saved_exitset = sysset_t_alloc (pi);


  if (tid == 0)
    {
      sprintf (pi->pathname, MAIN_PROC_NAME_FMT, pid);
      pi->next = procinfo_list;
      procinfo_list = pi;
    }
  else
    {



      sprintf (pi->pathname, MAIN_PROC_NAME_FMT, pid);

      pi->next = parent->thread_list;
      parent->thread_list = pi;
    }
  return pi;
}
