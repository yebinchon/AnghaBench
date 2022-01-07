
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_virmidi_dev {int filelist_lock; int filelist; int port; int client; int seq_mode; } ;
struct snd_virmidi {struct snd_virmidi_dev* rdev; int list; int port; int client; int seq_mode; int parser; struct snd_rawmidi_substream* substream; } ;
struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; TYPE_1__* rmidi; } ;
struct snd_rawmidi_runtime {struct snd_virmidi* private_data; } ;
struct TYPE_2__ {struct snd_virmidi_dev* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct snd_virmidi*) ;
 struct snd_virmidi* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ snd_midi_event_new (int ,int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_virmidi_input_open(struct snd_rawmidi_substream *substream)
{
 struct snd_virmidi_dev *rdev = substream->rmidi->private_data;
 struct snd_rawmidi_runtime *runtime = substream->runtime;
 struct snd_virmidi *vmidi;
 unsigned long flags;

 vmidi = kzalloc(sizeof(*vmidi), GFP_KERNEL);
 if (vmidi == ((void*)0))
  return -ENOMEM;
 vmidi->substream = substream;
 if (snd_midi_event_new(0, &vmidi->parser) < 0) {
  kfree(vmidi);
  return -ENOMEM;
 }
 vmidi->seq_mode = rdev->seq_mode;
 vmidi->client = rdev->client;
 vmidi->port = rdev->port;
 runtime->private_data = vmidi;
 write_lock_irqsave(&rdev->filelist_lock, flags);
 list_add_tail(&vmidi->list, &rdev->filelist);
 write_unlock_irqrestore(&rdev->filelist_lock, flags);
 vmidi->rdev = rdev;
 return 0;
}
