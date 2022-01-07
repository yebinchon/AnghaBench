
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel_set {int max_channels; int * private_data; int channels; } ;


 int GFP_KERNEL ;
 struct snd_midi_channel_set* kmalloc (int,int ) ;
 int snd_midi_channel_init_set (int) ;

struct snd_midi_channel_set *snd_midi_channel_alloc_set(int n)
{
 struct snd_midi_channel_set *chset;

 chset = kmalloc(sizeof(*chset), GFP_KERNEL);
 if (chset) {
  chset->channels = snd_midi_channel_init_set(n);
  chset->private_data = ((void*)0);
  chset->max_channels = n;
 }
 return chset;
}
