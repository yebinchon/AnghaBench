
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int need_resched () ;
 int preempt_disable_notrace () ;

__attribute__((used)) static inline int ftrace_preempt_disable(void)
{
 int resched;

 resched = need_resched();
 preempt_disable_notrace();

 return resched;
}
