
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int client; } ;
struct TYPE_3__ {int port; } ;
struct snd_seq_event {scalar_t__ type; TYPE_2__ dest; TYPE_1__ source; } ;
struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {scalar_t__ avail; struct seq_midisynth* private_data; } ;
struct seq_midisynth {int seq_client; int seq_port; int * parser; } ;
typedef int ev ;
typedef int buf ;


 int SNDRV_SEQ_ADDRESS_SUBSCRIBERS ;
 scalar_t__ SNDRV_SEQ_EVENT_NONE ;
 int memset (struct snd_seq_event*,int ,int) ;
 long snd_midi_event_encode (int *,char*,long,struct snd_seq_event*) ;
 long snd_rawmidi_kernel_read (struct snd_rawmidi_substream*,char*,int) ;
 int snd_seq_kernel_client_dispatch (int ,struct snd_seq_event*,int,int ) ;

__attribute__((used)) static void snd_midi_input_event(struct snd_rawmidi_substream *substream)
{
 struct snd_rawmidi_runtime *runtime;
 struct seq_midisynth *msynth;
 struct snd_seq_event ev;
 char buf[16], *pbuf;
 long res, count;

 if (substream == ((void*)0))
  return;
 runtime = substream->runtime;
 msynth = runtime->private_data;
 if (msynth == ((void*)0))
  return;
 memset(&ev, 0, sizeof(ev));
 while (runtime->avail > 0) {
  res = snd_rawmidi_kernel_read(substream, buf, sizeof(buf));
  if (res <= 0)
   continue;
  if (msynth->parser == ((void*)0))
   continue;
  pbuf = buf;
  while (res > 0) {
   count = snd_midi_event_encode(msynth->parser, pbuf, res, &ev);
   if (count < 0)
    break;
   pbuf += count;
   res -= count;
   if (ev.type != SNDRV_SEQ_EVENT_NONE) {
    ev.source.port = msynth->seq_port;
    ev.dest.client = SNDRV_SEQ_ADDRESS_SUBSCRIBERS;
    snd_seq_kernel_client_dispatch(msynth->seq_client, &ev, 1, 0);

    memset(&ev, 0, sizeof(ev));
   }
  }
 }
}
