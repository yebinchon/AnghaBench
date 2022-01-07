
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int tid; struct proc* next; } ;
struct inf {struct proc* threads; } ;



struct proc *
inf_tid_to_thread (struct inf *inf, int tid)
{
  struct proc *thread = inf->threads;

  while (thread)
    if (thread->tid == tid)
      return thread;
    else
      thread = thread->next;
  return 0;
}
