
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct snd_mpu401 {scalar_t__ rmidi; int timer_lock; TYPE_1__ timer; } ;


 int _snd_mpu401_uart_interrupt (struct snd_mpu401*) ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_mpu401_uart_timer(unsigned long data)
{
 struct snd_mpu401 *mpu = (struct snd_mpu401 *)data;
 unsigned long flags;

 spin_lock_irqsave(&mpu->timer_lock, flags);

 mpu->timer.expires = 1 + jiffies;
 add_timer(&mpu->timer);
 spin_unlock_irqrestore(&mpu->timer_lock, flags);
 if (mpu->rmidi)
  _snd_mpu401_uart_interrupt(mpu);
}
