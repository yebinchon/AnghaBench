
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_mixart {TYPE_2__* mgr; } ;
struct mixart_stream {TYPE_4__* pipe; } ;
struct TYPE_7__ {int references; } ;
struct TYPE_6__ {int ref_count_rate; int sample_rate; } ;
struct TYPE_5__ {int rate; struct mixart_stream* private_data; } ;


 int EINVAL ;
 scalar_t__ mixart_set_clock (TYPE_2__*,TYPE_4__*,int ) ;
 int mixart_sync_nonblock_events (TYPE_2__*) ;
 struct snd_mixart* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_printdd (char*) ;

__attribute__((used)) static int snd_mixart_prepare(struct snd_pcm_substream *subs)
{
 struct snd_mixart *chip = snd_pcm_substream_chip(subs);
 struct mixart_stream *stream = subs->runtime->private_data;



 snd_printdd("snd_mixart_prepare\n");

 mixart_sync_nonblock_events(chip->mgr);



 if(chip->mgr->ref_count_rate == 1)
  chip->mgr->sample_rate = subs->runtime->rate;


 if(stream->pipe->references == 1) {
  if( mixart_set_clock(chip->mgr, stream->pipe, subs->runtime->rate) )
   return -EINVAL;
 }

 return 0;
}
