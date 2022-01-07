
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel_set {struct snd_midi_channel_set* channels; } ;


 int kfree (struct snd_midi_channel_set*) ;

void snd_midi_channel_free_set(struct snd_midi_channel_set *chset)
{
 if (chset == ((void*)0))
  return;
 kfree(chset->channels);
 kfree(chset);
}
