
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_2__* rmidi; } ;
typedef size_t snd_wavefront_mpu_id ;
struct TYPE_10__ {unsigned long data; scalar_t__ expires; int function; } ;
struct TYPE_9__ {int* mode; int virtual; int istimer; TYPE_4__ timer; } ;
typedef TYPE_3__ snd_wavefront_midi_t ;
typedef int snd_wavefront_card_t ;
struct TYPE_8__ {TYPE_1__* card; int * private_data; } ;
struct TYPE_7__ {scalar_t__ private_data; } ;


 int MPU401_MODE_OUTPUT_TRIGGER ;
 int add_timer (TYPE_4__*) ;
 TYPE_3__* get_wavefront_midi (struct snd_rawmidi_substream*) ;
 int init_timer (TYPE_4__*) ;
 scalar_t__ jiffies ;
 int snd_wavefront_midi_output_timer ;
 int snd_wavefront_midi_output_write (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_wavefront_midi_output_trigger(struct snd_rawmidi_substream *substream, int up)
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
  if ((midi->mode[mpu] & MPU401_MODE_OUTPUT_TRIGGER) == 0) {
   if (!midi->istimer) {
    init_timer(&midi->timer);
    midi->timer.function = snd_wavefront_midi_output_timer;
    midi->timer.data = (unsigned long) substream->rmidi->card->private_data;
    midi->timer.expires = 1 + jiffies;
    add_timer(&midi->timer);
   }
   midi->istimer++;
   midi->mode[mpu] |= MPU401_MODE_OUTPUT_TRIGGER;
  }
 } else {
  midi->mode[mpu] &= ~MPU401_MODE_OUTPUT_TRIGGER;
 }
 spin_unlock_irqrestore (&midi->virtual, flags);

 if (up)
  snd_wavefront_midi_output_write((snd_wavefront_card_t *)substream->rmidi->card->private_data);
}
