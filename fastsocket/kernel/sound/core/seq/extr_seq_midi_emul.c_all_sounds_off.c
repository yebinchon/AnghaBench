
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_op {int (* note_terminate ) (void*,int,struct snd_midi_channel*) ;} ;
struct snd_midi_channel {scalar_t__* note; } ;


 int stub1 (void*,int,struct snd_midi_channel*) ;

__attribute__((used)) static void
all_sounds_off(struct snd_midi_op *ops, void *drv, struct snd_midi_channel *chan)
{
 int n;

 if (! ops->note_terminate)
  return;
 for (n = 0; n < 128; n++) {
  if (chan->note[n]) {
   ops->note_terminate(drv, n, chan);
   chan->note[n] = 0;
  }
 }
}
