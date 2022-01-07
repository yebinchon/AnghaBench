
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ latency_record_count; int latency_record; } ;


 int latency_lock ;
 int latencytop_enabled ;
 int memset (int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void clear_all_latency_tracing(struct task_struct *p)
{
 unsigned long flags;

 if (!latencytop_enabled)
  return;

 spin_lock_irqsave(&latency_lock, flags);
 memset(&p->latency_record, 0, sizeof(p->latency_record));
 p->latency_record_count = 0;
 spin_unlock_irqrestore(&latency_lock, flags);
}
