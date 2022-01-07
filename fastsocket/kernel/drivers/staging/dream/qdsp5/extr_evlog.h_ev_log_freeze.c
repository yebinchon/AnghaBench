
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ev_log {unsigned int fault; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void ev_log_freeze(struct ev_log *log, unsigned count)
{
 unsigned long flags;
 local_irq_save(flags);
 log->fault = count;
 local_irq_restore(flags);
}
