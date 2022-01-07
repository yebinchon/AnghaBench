
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* NTP_PHASE_LIMIT ;
 int STA_UNSYNC ;
 int ntp_lock ;
 int ntp_update_frequency () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tick_length ;
 int tick_length_base ;
 scalar_t__ time_adjust ;
 void* time_esterror ;
 void* time_maxerror ;
 scalar_t__ time_offset ;
 int time_status ;

void ntp_clear(void)
{
 unsigned long flags;

 spin_lock_irqsave(&ntp_lock, flags);

 time_adjust = 0;
 time_status |= STA_UNSYNC;
 time_maxerror = NTP_PHASE_LIMIT;
 time_esterror = NTP_PHASE_LIMIT;

 ntp_update_frequency();

 tick_length = tick_length_base;
 time_offset = 0;
 spin_unlock_irqrestore(&ntp_lock, flags);

}
