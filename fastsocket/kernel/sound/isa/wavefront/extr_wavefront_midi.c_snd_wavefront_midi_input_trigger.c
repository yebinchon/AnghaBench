
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
typedef size_t snd_wavefront_mpu_id ;
struct TYPE_5__ {int virtual; int * mode; } ;
typedef TYPE_2__ snd_wavefront_midi_t ;
struct TYPE_4__ {int * private_data; } ;


 int MPU401_MODE_INPUT_TRIGGER ;
 TYPE_2__* get_wavefront_midi (struct snd_rawmidi_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_wavefront_midi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 snd_wavefront_midi_t *midi;
 snd_wavefront_mpu_id mpu;

 if (substream == ((void*)0) || substream->rmidi == ((void*)0))
         return;

 if (substream->rmidi->private_data == ((void*)0))
         return;

 mpu = *((snd_wavefront_mpu_id *) substream->rmidi->private_data);

 if ((midi = get_wavefront_midi (substream)) == ((void*)0)) {
  return;
 }

 spin_lock_irqsave (&midi->virtual, flags);
 if (up) {
  midi->mode[mpu] |= MPU401_MODE_INPUT_TRIGGER;
 } else {
  midi->mode[mpu] &= ~MPU401_MODE_INPUT_TRIGGER;
 }
 spin_unlock_irqrestore (&midi->virtual, flags);
}
