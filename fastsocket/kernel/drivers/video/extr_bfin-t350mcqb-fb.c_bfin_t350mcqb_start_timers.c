
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER0bit ;
 int TIMER1bit ;
 int enable_gptimers (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void bfin_t350mcqb_start_timers(void)
{
 unsigned long flags;

 local_irq_save(flags);
  enable_gptimers(TIMER1bit);
  enable_gptimers(TIMER0bit);
 local_irq_restore(flags);
}
