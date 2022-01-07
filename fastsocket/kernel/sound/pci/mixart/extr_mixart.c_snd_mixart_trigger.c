
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct mixart_stream {void* status; } ;
struct TYPE_2__ {struct mixart_stream* private_data; } ;


 int EINVAL ;
 void* MIXART_STREAM_STATUS_OPEN ;
 void* MIXART_STREAM_STATUS_PAUSE ;
 void* MIXART_STREAM_STATUS_RUNNING ;




 int mixart_set_stream_state (struct mixart_stream*,int) ;
 int snd_printdd (char*) ;

__attribute__((used)) static int snd_mixart_trigger(struct snd_pcm_substream *subs, int cmd)
{
 struct mixart_stream *stream = subs->runtime->private_data;

 switch (cmd) {
 case 129:

  snd_printdd("SNDRV_PCM_TRIGGER_START\n");


  if( mixart_set_stream_state(stream, 1) )
   return -EINVAL;

  stream->status = MIXART_STREAM_STATUS_RUNNING;

  break;
 case 128:


  if( mixart_set_stream_state(stream, 0) )
   return -EINVAL;

  stream->status = MIXART_STREAM_STATUS_OPEN;

  snd_printdd("SNDRV_PCM_TRIGGER_STOP\n");

  break;

 case 131:

  stream->status = MIXART_STREAM_STATUS_PAUSE;
  snd_printdd("SNDRV_PCM_PAUSE_PUSH\n");
  break;
 case 130:

  stream->status = MIXART_STREAM_STATUS_RUNNING;
  snd_printdd("SNDRV_PCM_PAUSE_RELEASE\n");
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
