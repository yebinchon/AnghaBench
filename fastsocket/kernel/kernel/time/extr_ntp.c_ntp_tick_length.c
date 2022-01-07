
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int ntp_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tick_length ;

u64 ntp_tick_length(void)
{
 unsigned long flags;
 s64 ret;

 spin_lock_irqsave(&ntp_lock, flags);
 ret = tick_length;
 spin_unlock_irqrestore(&ntp_lock, flags);
 return ret;
}
