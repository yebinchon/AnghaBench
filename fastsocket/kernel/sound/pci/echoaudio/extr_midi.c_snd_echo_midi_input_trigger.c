
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct echoaudio {int midi_input_enabled; int lock; } ;
struct TYPE_2__ {struct echoaudio* private_data; } ;


 int enable_midi_input (struct echoaudio*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void snd_echo_midi_input_trigger(struct snd_rawmidi_substream *substream,
     int up)
{
 struct echoaudio *chip = substream->rmidi->private_data;

 if (up != chip->midi_input_enabled) {
  spin_lock_irq(&chip->lock);
  enable_midi_input(chip, up);
  spin_unlock_irq(&chip->lock);
  chip->midi_input_enabled = up;
 }
}
