
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PREEMPT_ACTIVE ;
 scalar_t__ need_resched () ;
 int preempt_count () ;

__attribute__((used)) static inline int should_resched(void)
{
 return need_resched() && !(preempt_count() & PREEMPT_ACTIVE);
}
