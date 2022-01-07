
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int stream; } ;
struct lx_stream {int dummy; } ;
struct lx6464es {struct lx_stream playback_stream; struct lx_stream capture_stream; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int lx_pcm_trigger_dispatch (struct lx6464es*,struct lx_stream*,int) ;
 struct lx6464es* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_printdd (char*) ;

__attribute__((used)) static int lx_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct lx6464es *chip = snd_pcm_substream_chip(substream);
 const int is_capture = (substream->stream == SNDRV_PCM_STREAM_CAPTURE);
 struct lx_stream *stream = is_capture ? &chip->capture_stream :
  &chip->playback_stream;

 snd_printdd("->lx_pcm_trigger\n");

 return lx_pcm_trigger_dispatch(chip, stream, cmd);
}
