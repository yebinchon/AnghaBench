
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {int m_busy; scalar_t__ mode; int opened; int devno; int (* inputintr ) (int ,unsigned char) ;int lock; } ;


 scalar_t__ MODE_SYNTH ;
 int OPEN_READ ;
 scalar_t__ input_avail (struct mpu_config*) ;
 int mpu_input_scanner (struct mpu_config*,unsigned char) ;
 unsigned char read_data (struct mpu_config*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,unsigned char) ;

__attribute__((used)) static void mpu401_input_loop(struct mpu_config *devc)
{
 unsigned long flags;
 int busy;
 int n;

 spin_lock_irqsave(&devc->lock,flags);
 busy = devc->m_busy;
 devc->m_busy = 1;
 spin_unlock_irqrestore(&devc->lock,flags);

 if (busy)
  return;

 n = 50;

 while (input_avail(devc) && n-- > 0)
 {
  unsigned char c = read_data(devc);

  if (devc->mode == MODE_SYNTH)
  {
   mpu_input_scanner(devc, c);
  }
  else if (devc->opened & OPEN_READ && devc->inputintr != ((void*)0))
   devc->inputintr(devc->devno, c);
 }
 devc->m_busy = 0;
}
