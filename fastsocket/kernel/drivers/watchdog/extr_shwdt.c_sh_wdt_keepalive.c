
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int heartbeat ;
 scalar_t__ jiffies ;
 scalar_t__ next_heartbeat ;
 int shwdt_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void sh_wdt_keepalive(void)
{
 unsigned long flags;

 spin_lock_irqsave(&shwdt_lock, flags);
 next_heartbeat = jiffies + (heartbeat * HZ);
 spin_unlock_irqrestore(&shwdt_lock, flags);
}
