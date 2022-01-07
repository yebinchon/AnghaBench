
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {scalar_t__ base; int opened; scalar_t__ mode; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 scalar_t__ MODE_SYNTH ;
 int OPEN_READ ;
 struct mpu_config* dev_conf ;
 scalar_t__ input_avail (struct mpu_config*) ;
 int mpu401_input_loop (struct mpu_config*) ;
 int read_data (struct mpu_config*) ;

__attribute__((used)) static irqreturn_t mpuintr(int irq, void *dev_id)
{
 struct mpu_config *devc;
 int dev = (int)(unsigned long) dev_id;
 int handled = 0;

 devc = &dev_conf[dev];

 if (input_avail(devc))
 {
  handled = 1;
  if (devc->base != 0 && (devc->opened & OPEN_READ || devc->mode == MODE_SYNTH))
   mpu401_input_loop(devc);
  else
  {

   read_data(devc);
  }
 }
 return IRQ_RETVAL(handled);
}
