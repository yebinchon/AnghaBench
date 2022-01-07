
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {scalar_t__ port; struct proc* next; } ;
struct inf {struct proc* threads; } ;
typedef scalar_t__ mach_port_t ;



struct proc *
inf_port_to_thread (struct inf *inf, mach_port_t port)
{
  struct proc *thread = inf->threads;
  while (thread)
    if (thread->port == port)
      return thread;
    else
      thread = thread->next;
  return 0;
}
