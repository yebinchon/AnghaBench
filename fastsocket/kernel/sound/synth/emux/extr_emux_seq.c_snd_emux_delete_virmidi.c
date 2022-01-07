
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux {int midi_ports; scalar_t__* vmidi; int card; } ;


 int kfree (scalar_t__*) ;
 int snd_device_free (int ,scalar_t__) ;

int snd_emux_delete_virmidi(struct snd_emux *emu)
{
 int i;

 if (emu->vmidi == ((void*)0))
  return 0;

 for (i = 0; i < emu->midi_ports; i++) {
  if (emu->vmidi[i])
   snd_device_free(emu->card, emu->vmidi[i]);
 }
 kfree(emu->vmidi);
 emu->vmidi = ((void*)0);
 return 0;
}
