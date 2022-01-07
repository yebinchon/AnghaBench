
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {struct emu10k1x_midi* private_data; } ;
struct emu10k1x_midi {int * rmidi; int * interrupt; } ;



__attribute__((used)) static void snd_emu10k1x_midi_free(struct snd_rawmidi *rmidi)
{
 struct emu10k1x_midi *midi = rmidi->private_data;
 midi->interrupt = ((void*)0);
 midi->rmidi = ((void*)0);
}
