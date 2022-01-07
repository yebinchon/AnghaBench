
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int timer_invoked; int timer_lock; int timer; } ;


 int MPU401_MODE_INPUT_TIMER ;
 int MPU401_MODE_OUTPUT_TIMER ;
 int del_timer (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_mpu401_uart_remove_timer (struct snd_mpu401 *mpu, int input)
{
 unsigned long flags;

 spin_lock_irqsave (&mpu->timer_lock, flags);
 if (mpu->timer_invoked) {
  mpu->timer_invoked &= input ? ~MPU401_MODE_INPUT_TIMER :
   ~MPU401_MODE_OUTPUT_TIMER;
  if (! mpu->timer_invoked)
   del_timer(&mpu->timer);
 }
 spin_unlock_irqrestore (&mpu->timer_lock, flags);
}
