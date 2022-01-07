
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_virmidi {int parser; } ;
struct snd_rawmidi_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct snd_virmidi* private_data; } ;


 int kfree (struct snd_virmidi*) ;
 int snd_midi_event_free (int ) ;

__attribute__((used)) static int snd_virmidi_output_close(struct snd_rawmidi_substream *substream)
{
 struct snd_virmidi *vmidi = substream->runtime->private_data;
 snd_midi_event_free(vmidi->parser);
 substream->runtime->private_data = ((void*)0);
 kfree(vmidi);
 return 0;
}
