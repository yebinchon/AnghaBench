
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rfkill {int lock; int state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,int) ;
 struct rfkill* to_rfkill (struct device*) ;
 int user_state_from_blocked (int ) ;

__attribute__((used)) static ssize_t rfkill_state_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct rfkill *rfkill = to_rfkill(dev);
 unsigned long flags;
 u32 state;

 spin_lock_irqsave(&rfkill->lock, flags);
 state = rfkill->state;
 spin_unlock_irqrestore(&rfkill->lock, flags);

 return sprintf(buf, "%d\n", user_state_from_blocked(state));
}
