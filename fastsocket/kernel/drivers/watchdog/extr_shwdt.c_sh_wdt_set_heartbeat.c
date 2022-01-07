
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int heartbeat ;
 int shwdt_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sh_wdt_set_heartbeat(int t)
{
 unsigned long flags;

 if (unlikely(t < 1 || t > 3600))
  return -EINVAL;

 spin_lock_irqsave(&shwdt_lock, flags);
 heartbeat = t;
 spin_unlock_irqrestore(&shwdt_lock, flags);
 return 0;
}
