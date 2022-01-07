
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_event {struct snd_midi_event* buf; } ;


 int kfree (struct snd_midi_event*) ;

void snd_midi_event_free(struct snd_midi_event *dev)
{
 if (dev != ((void*)0)) {
  kfree(dev->buf);
  kfree(dev);
 }
}
