
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int preempt_enable_no_resched_notrace () ;
 int preempt_enable_notrace () ;

__attribute__((used)) static inline void ftrace_preempt_enable(int resched)
{
 if (resched)
  preempt_enable_no_resched_notrace();
 else
  preempt_enable_notrace();
}
