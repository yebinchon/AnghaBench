
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {scalar_t__ stream; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int avail_min; scalar_t__ hw_ptr; scalar_t__ appl_ptr; scalar_t__ buffer_size; int * buffer; scalar_t__ avail; int * event; int tasklet; int sleep; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ SNDRV_RAWMIDI_STREAM_INPUT ;
 int init_waitqueue_head (int *) ;
 int kfree (struct snd_rawmidi_runtime*) ;
 int * kmalloc (scalar_t__,int ) ;
 struct snd_rawmidi_runtime* kzalloc (int,int ) ;
 int snd_rawmidi_input_event_tasklet ;
 int snd_rawmidi_output_trigger_tasklet ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int snd_rawmidi_runtime_create(struct snd_rawmidi_substream *substream)
{
 struct snd_rawmidi_runtime *runtime;

 if ((runtime = kzalloc(sizeof(*runtime), GFP_KERNEL)) == ((void*)0))
  return -ENOMEM;
 spin_lock_init(&runtime->lock);
 init_waitqueue_head(&runtime->sleep);
 if (substream->stream == SNDRV_RAWMIDI_STREAM_INPUT)
  tasklet_init(&runtime->tasklet,
        snd_rawmidi_input_event_tasklet,
        (unsigned long)substream);
 else
  tasklet_init(&runtime->tasklet,
        snd_rawmidi_output_trigger_tasklet,
        (unsigned long)substream);
 runtime->event = ((void*)0);
 runtime->buffer_size = PAGE_SIZE;
 runtime->avail_min = 1;
 if (substream->stream == SNDRV_RAWMIDI_STREAM_INPUT)
  runtime->avail = 0;
 else
  runtime->avail = runtime->buffer_size;
 if ((runtime->buffer = kmalloc(runtime->buffer_size, GFP_KERNEL)) == ((void*)0)) {
  kfree(runtime);
  return -ENOMEM;
 }
 runtime->appl_ptr = runtime->hw_ptr = 0;
 substream->runtime = runtime;
 return 0;
}
