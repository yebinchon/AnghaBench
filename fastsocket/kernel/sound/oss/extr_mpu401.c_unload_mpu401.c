
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_info {int* slots; scalar_t__ always_detect; scalar_t__ irq; int io_base; } ;


 int free_irq (scalar_t__,struct address_info*) ;
 int kfree (void*) ;
 void** mpu401_synth_operations ;
 int release_region (int ,int) ;
 int sound_unload_mididev (int) ;
 int sound_unload_timerdev (int) ;

void unload_mpu401(struct address_info *hw_config)
{
 void *p;
 int n=hw_config->slots[1];

 if (n != -1) {
  release_region(hw_config->io_base, 2);
  if (hw_config->always_detect == 0 && hw_config->irq > 0)
   free_irq(hw_config->irq, hw_config);
  p=mpu401_synth_operations[n];
  sound_unload_mididev(n);
  sound_unload_timerdev(hw_config->slots[2]);
  kfree(p);
 }
}
