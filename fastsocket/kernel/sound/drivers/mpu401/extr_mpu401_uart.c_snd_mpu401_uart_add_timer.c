
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; scalar_t__ expires; int function; } ;
struct snd_mpu401 {int timer_lock; int timer_invoked; TYPE_1__ timer; } ;


 int MPU401_MODE_INPUT_TIMER ;
 int MPU401_MODE_OUTPUT_TIMER ;
 int add_timer (TYPE_1__*) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int snd_mpu401_uart_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_mpu401_uart_add_timer (struct snd_mpu401 *mpu, int input)
{
 unsigned long flags;

 spin_lock_irqsave (&mpu->timer_lock, flags);
 if (mpu->timer_invoked == 0) {
  init_timer(&mpu->timer);
  mpu->timer.data = (unsigned long)mpu;
  mpu->timer.function = snd_mpu401_uart_timer;
  mpu->timer.expires = 1 + jiffies;
  add_timer(&mpu->timer);
 }
 mpu->timer_invoked |= input ? MPU401_MODE_INPUT_TIMER :
  MPU401_MODE_OUTPUT_TIMER;
 spin_unlock_irqrestore (&mpu->timer_lock, flags);
}
