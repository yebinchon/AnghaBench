
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rawmidi {int info_flags; int name; int private_free; struct snd_line6_midi* private_data; } ;
struct snd_line6_midi {TYPE_2__* line6; } ;
struct TYPE_4__ {TYPE_1__* properties; int card; } ;
struct TYPE_3__ {int name; } ;


 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int line6_cleanup_midi ;
 int line6_midi_input_ops ;
 int line6_midi_output_ops ;
 int snd_rawmidi_new (int ,char*,int ,int,int,struct snd_rawmidi**) ;
 int snd_rawmidi_set_ops (struct snd_rawmidi*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_line6_new_midi(struct snd_line6_midi *line6midi)
{
 struct snd_rawmidi *rmidi;
 int err;

 err = snd_rawmidi_new(line6midi->line6->card, "Line6 MIDI", 0, 1, 1,
         &rmidi);
 if (err < 0)
  return err;

 rmidi->private_data = line6midi;
 rmidi->private_free = line6_cleanup_midi;
 strcpy(rmidi->name, line6midi->line6->properties->name);

 rmidi->info_flags =
  SNDRV_RAWMIDI_INFO_OUTPUT |
  SNDRV_RAWMIDI_INFO_INPUT |
  SNDRV_RAWMIDI_INFO_DUPLEX;

 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT,
       &line6_midi_output_ops);
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_INPUT,
       &line6_midi_input_ops);
 return 0;
}
