
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct hdspm_midi {int lock; struct snd_rawmidi_substream* input; int id; int hdspm; } ;
struct TYPE_2__ {struct hdspm_midi* private_data; } ;


 int snd_hdspm_flush_midi_input (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdspm_midi_input_open(struct snd_rawmidi_substream *substream)
{
 struct hdspm_midi *hmidi;

 hmidi = substream->rmidi->private_data;
 spin_lock_irq (&hmidi->lock);
 snd_hdspm_flush_midi_input (hmidi->hdspm, hmidi->id);
 hmidi->input = substream;
 spin_unlock_irq (&hmidi->lock);

 return 0;
}
