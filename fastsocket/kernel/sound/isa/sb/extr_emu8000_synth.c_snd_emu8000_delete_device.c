
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_device {int card; struct snd_emu8000* driver_data; } ;
struct snd_emu8000 {int * memhdr; int * emu; scalar_t__ pcm; } ;


 int snd_device_free (int ,scalar_t__) ;
 int snd_emux_free (int *) ;
 int snd_util_memhdr_free (int *) ;

__attribute__((used)) static int snd_emu8000_delete_device(struct snd_seq_device *dev)
{
 struct snd_emu8000 *hw;

 if (dev->driver_data == ((void*)0))
  return 0;

 hw = dev->driver_data;
 if (hw->pcm)
  snd_device_free(dev->card, hw->pcm);
 if (hw->emu)
  snd_emux_free(hw->emu);
 if (hw->memhdr)
  snd_util_memhdr_free(hw->memhdr);
 hw->emu = ((void*)0);
 hw->memhdr = ((void*)0);
 return 0;
}
