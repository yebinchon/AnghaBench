
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DEFINE_SPINLOCK ;


 unsigned long HZ ;
 int audit_rate_limit ;
 unsigned long jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int audit_rate_check(void)
{
 static unsigned long last_check = 0;
 static int messages = 0;
 static DEFINE_SPINLOCK(lock);
 unsigned long flags;
 unsigned long now;
 unsigned long elapsed;
 int retval = 0;

 if (!audit_rate_limit) return 1;

 spin_lock_irqsave(&lock, flags);
 if (++messages < audit_rate_limit) {
  retval = 1;
 } else {
  now = jiffies;
  elapsed = now - last_check;
  if (elapsed > HZ) {
   last_check = now;
   messages = 0;
   retval = 1;
  }
 }
 spin_unlock_irqrestore(&lock, flags);

 return retval;
}
