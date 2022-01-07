
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_virmidi_dev {int port; int client; int seq_mode; } ;
struct snd_virmidi {struct snd_virmidi_dev* rdev; int event; int port; int client; int seq_mode; int parser; struct snd_rawmidi_substream* substream; } ;
struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; TYPE_1__* rmidi; } ;
struct snd_rawmidi_runtime {struct snd_virmidi* private_data; } ;
struct TYPE_2__ {struct snd_virmidi_dev* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_MIDI_EVENT_BUF ;
 int kfree (struct snd_virmidi*) ;
 struct snd_virmidi* kzalloc (int,int ) ;
 scalar_t__ snd_midi_event_new (int ,int *) ;
 int snd_virmidi_init_event (struct snd_virmidi*,int *) ;

__attribute__((used)) static int snd_virmidi_output_open(struct snd_rawmidi_substream *substream)
{
 struct snd_virmidi_dev *rdev = substream->rmidi->private_data;
 struct snd_rawmidi_runtime *runtime = substream->runtime;
 struct snd_virmidi *vmidi;

 vmidi = kzalloc(sizeof(*vmidi), GFP_KERNEL);
 if (vmidi == ((void*)0))
  return -ENOMEM;
 vmidi->substream = substream;
 if (snd_midi_event_new(MAX_MIDI_EVENT_BUF, &vmidi->parser) < 0) {
  kfree(vmidi);
  return -ENOMEM;
 }
 vmidi->seq_mode = rdev->seq_mode;
 vmidi->client = rdev->client;
 vmidi->port = rdev->port;
 snd_virmidi_init_event(vmidi, &vmidi->event);
 vmidi->rdev = rdev;
 runtime->private_data = vmidi;
 return 0;
}
