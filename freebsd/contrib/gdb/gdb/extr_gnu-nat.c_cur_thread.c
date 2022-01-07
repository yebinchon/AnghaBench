
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct inf {int dummy; } ;


 int PIDGET (int ) ;
 struct inf* cur_inf () ;
 int error (char*) ;
 struct proc* inf_tid_to_thread (struct inf*,int ) ;
 int inferior_ptid ;

__attribute__((used)) static struct proc *
cur_thread (void)
{
  struct inf *inf = cur_inf ();
  struct proc *thread = inf_tid_to_thread (inf, PIDGET (inferior_ptid));
  if (!thread)
    error ("No current thread.");
  return thread;
}
