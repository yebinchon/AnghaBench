
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_status {scalar_t__ xruns; int avail; int stream; } ;
struct snd_rawmidi_runtime {int lock; scalar_t__ xruns; int avail; } ;


 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int memset (struct snd_rawmidi_status*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_rawmidi_input_status(struct snd_rawmidi_substream *substream,
        struct snd_rawmidi_status * status)
{
 struct snd_rawmidi_runtime *runtime = substream->runtime;

 memset(status, 0, sizeof(*status));
 status->stream = SNDRV_RAWMIDI_STREAM_INPUT;
 spin_lock_irq(&runtime->lock);
 status->avail = runtime->avail;
 status->xruns = runtime->xruns;
 runtime->xruns = 0;
 spin_unlock_irq(&runtime->lock);
 return 0;
}
