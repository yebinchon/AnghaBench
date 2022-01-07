
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef int procinfo ;


 int PIDGET (int ) ;
 int TIDGET (int ) ;
 int destroy_procinfo (int *) ;
 int * find_procinfo (int,int) ;
 int proc_get_status (int *) ;

__attribute__((used)) static int
procfs_thread_alive (ptid_t ptid)
{
  int proc, thread;
  procinfo *pi;

  proc = PIDGET (ptid);
  thread = TIDGET (ptid);

  if ((pi = find_procinfo (proc, thread)) == ((void*)0))
    return 0;



  if (!proc_get_status (pi))
    {
      destroy_procinfo (pi);
      return 0;
    }

  return 1;
}
