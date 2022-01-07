
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PREEMPT_ACTIVE ;
 int add_preempt_count (int ) ;
 int schedule () ;
 int sub_preempt_count (int ) ;

__attribute__((used)) static void __cond_resched(void)
{
 add_preempt_count(PREEMPT_ACTIVE);
 schedule();
 sub_preempt_count(PREEMPT_ACTIVE);
}
