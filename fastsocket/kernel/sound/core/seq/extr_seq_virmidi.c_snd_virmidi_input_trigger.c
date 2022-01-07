
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_virmidi {int trigger; } ;
struct snd_rawmidi_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct snd_virmidi* private_data; } ;



__attribute__((used)) static void snd_virmidi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct snd_virmidi *vmidi = substream->runtime->private_data;

 if (up) {
  vmidi->trigger = 1;
 } else {
  vmidi->trigger = 0;
 }
}
