
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {struct snd_mpu401* private_data; } ;
struct snd_mpu401 {scalar_t__ irq; int res; scalar_t__ irq_flags; } ;


 int free_irq (scalar_t__,void*) ;
 int kfree (struct snd_mpu401*) ;
 int release_and_free_resource (int ) ;

__attribute__((used)) static void snd_mpu401_uart_free(struct snd_rawmidi *rmidi)
{
 struct snd_mpu401 *mpu = rmidi->private_data;
 if (mpu->irq_flags && mpu->irq >= 0)
  free_irq(mpu->irq, (void *) mpu);
 release_and_free_resource(mpu->res);
 kfree(mpu);
}
