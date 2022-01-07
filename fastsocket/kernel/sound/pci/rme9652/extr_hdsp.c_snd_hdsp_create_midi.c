
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_card {char* shortname; } ;
struct hdsp {TYPE_1__* midi; } ;
struct TYPE_5__ {int info_flags; TYPE_1__* private_data; int name; } ;
struct TYPE_4__ {int id; TYPE_2__* rmidi; int lock; scalar_t__ pending; scalar_t__ istimer; struct hdsp* hdsp; int * output; int * input; } ;


 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int snd_hdsp_midi_input ;
 int snd_hdsp_midi_output ;
 scalar_t__ snd_rawmidi_new (struct snd_card*,char*,int,int,int,TYPE_2__**) ;
 int snd_rawmidi_set_ops (TYPE_2__*,int ,int *) ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int snd_hdsp_create_midi (struct snd_card *card, struct hdsp *hdsp, int id)
{
 char buf[32];

 hdsp->midi[id].id = id;
 hdsp->midi[id].rmidi = ((void*)0);
 hdsp->midi[id].input = ((void*)0);
 hdsp->midi[id].output = ((void*)0);
 hdsp->midi[id].hdsp = hdsp;
 hdsp->midi[id].istimer = 0;
 hdsp->midi[id].pending = 0;
 spin_lock_init (&hdsp->midi[id].lock);

 sprintf (buf, "%s MIDI %d", card->shortname, id+1);
 if (snd_rawmidi_new (card, buf, id, 1, 1, &hdsp->midi[id].rmidi) < 0)
  return -1;

 sprintf(hdsp->midi[id].rmidi->name, "HDSP MIDI %d", id+1);
 hdsp->midi[id].rmidi->private_data = &hdsp->midi[id];

 snd_rawmidi_set_ops (hdsp->midi[id].rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT, &snd_hdsp_midi_output);
 snd_rawmidi_set_ops (hdsp->midi[id].rmidi, SNDRV_RAWMIDI_STREAM_INPUT, &snd_hdsp_midi_input);

 hdsp->midi[id].rmidi->info_flags |= SNDRV_RAWMIDI_INFO_OUTPUT |
  SNDRV_RAWMIDI_INFO_INPUT |
  SNDRV_RAWMIDI_INFO_DUPLEX;

 return 0;
}
