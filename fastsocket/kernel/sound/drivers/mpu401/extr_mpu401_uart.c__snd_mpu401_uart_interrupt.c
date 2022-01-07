
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int info_flags; int input_lock; int mode; } ;


 int MPU401_INFO_INPUT ;
 int MPU401_INFO_TX_IRQ ;
 int MPU401_MODE_BIT_INPUT ;
 int snd_mpu401_uart_clear_rx (struct snd_mpu401*) ;
 int snd_mpu401_uart_input_read (struct snd_mpu401*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int uart_interrupt_tx (struct snd_mpu401*) ;

__attribute__((used)) static void _snd_mpu401_uart_interrupt(struct snd_mpu401 *mpu)
{
 unsigned long flags;

 if (mpu->info_flags & MPU401_INFO_INPUT) {
  spin_lock_irqsave(&mpu->input_lock, flags);
  if (test_bit(MPU401_MODE_BIT_INPUT, &mpu->mode))
   snd_mpu401_uart_input_read(mpu);
  else
   snd_mpu401_uart_clear_rx(mpu);
  spin_unlock_irqrestore(&mpu->input_lock, flags);
 }
 if (! (mpu->info_flags & MPU401_INFO_TX_IRQ))


  uart_interrupt_tx(mpu);
}
