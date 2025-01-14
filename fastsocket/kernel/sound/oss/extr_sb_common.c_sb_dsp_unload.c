
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct address_info {size_t* slots; scalar_t__ io_base; } ;
struct TYPE_7__ {scalar_t__ base; int model; scalar_t__ pcibase; int caps; scalar_t__ dma8; scalar_t__ dma16; scalar_t__ irq; int dev; int my_mididev; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_8__ {TYPE_1__* devc; } ;


 int MDL_ESS ;
 int SB_NO_AUDIO ;
 int SB_NO_MIDI ;
 TYPE_6__** audio_devs ;
 TYPE_1__* detected_devc ;
 int free_irq (scalar_t__,TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 int release_region (scalar_t__,int) ;
 int sb_mixer_unload (TYPE_1__*) ;
 int sound_free_dma (scalar_t__) ;
 int sound_unload_audiodev (int ) ;
 int sound_unload_mididev (int ) ;

void sb_dsp_unload(struct address_info *hw_config, int sbmpu)
{
 sb_devc *devc;

 devc = audio_devs[hw_config->slots[0]]->devc;

 if (devc && devc->base == hw_config->io_base)
 {
  if ((devc->model & MDL_ESS) && devc->pcibase)
   release_region(devc->pcibase, 8);

  release_region(devc->base, 16);

  if (!(devc->caps & SB_NO_AUDIO))
  {
   sound_free_dma(devc->dma8);
   if (devc->dma16 >= 0)
    sound_free_dma(devc->dma16);
  }
  if (!(devc->caps & SB_NO_AUDIO && devc->caps & SB_NO_MIDI))
  {
   if (devc->irq > 0)
    free_irq(devc->irq, devc);

   sb_mixer_unload(devc);



   if (!sbmpu)
    sound_unload_mididev(devc->my_mididev);
   sound_unload_audiodev(devc->dev);
  }
  kfree(devc);
 }
 else
  release_region(hw_config->io_base, 16);

 kfree(detected_devc);
}
