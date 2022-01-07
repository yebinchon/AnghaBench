
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_event {int nostat; } ;



void snd_midi_event_no_status(struct snd_midi_event *dev, int on)
{
 dev->nostat = on ? 1 : 0;
}
