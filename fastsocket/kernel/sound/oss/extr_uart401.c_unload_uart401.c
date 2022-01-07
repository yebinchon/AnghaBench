
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t my_dev; struct TYPE_6__* converter; int irq; int share_irq; struct TYPE_6__* devc; } ;
typedef TYPE_1__ uart401_devc ;
struct address_info {int* slots; int io_base; } ;


 int free_irq (int ,TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__** midi_devs ;
 int release_region (int ,int) ;
 int reset_uart401 (TYPE_1__*) ;
 int sound_unload_mididev (size_t) ;

void unload_uart401(struct address_info *hw_config)
{
 uart401_devc *devc;
 int n=hw_config->slots[4];


 if(n==-1 || midi_devs[n]==((void*)0))
  return;



 devc = midi_devs[hw_config->slots[4]]->devc;
 if (devc == ((void*)0))
  return;

 reset_uart401(devc);
 release_region(hw_config->io_base, 4);

 if (!devc->share_irq)
  free_irq(devc->irq, devc);
 if (devc)
 {
  kfree(midi_devs[devc->my_dev]->converter);
  kfree(midi_devs[devc->my_dev]);
  kfree(devc);
  devc = ((void*)0);
 }

 sound_unload_mididev(hw_config->slots[4]);
}
