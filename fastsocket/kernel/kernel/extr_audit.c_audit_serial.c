
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DEFINE_SPINLOCK ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

unsigned int audit_serial(void)
{
 static DEFINE_SPINLOCK(serial_lock);
 static unsigned int serial = 0;

 unsigned long flags;
 unsigned int ret;

 spin_lock_irqsave(&serial_lock, flags);
 do {
  ret = ++serial;
 } while (unlikely(!ret));
 spin_unlock_irqrestore(&serial_lock, flags);

 return ret;
}
