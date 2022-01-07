
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcxhr {int chip_idx; struct pcxhr_mgr* mgr; } ;
struct snd_pcm_substream {int number; TYPE_1__* runtime; } ;
struct pcxhr_stream {int * substream; int status; } ;
struct pcxhr_mgr {scalar_t__ ref_count_rate; int setup_mutex; scalar_t__ sample_rate; } ;
struct TYPE_2__ {struct pcxhr_stream* private_data; } ;


 int PCXHR_STREAM_STATUS_FREE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcxhr_hardware_timer (struct pcxhr_mgr*,int ) ;
 struct snd_pcxhr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_printdd (char*,int ,int ) ;

__attribute__((used)) static int pcxhr_close(struct snd_pcm_substream *subs)
{
 struct snd_pcxhr *chip = snd_pcm_substream_chip(subs);
 struct pcxhr_mgr *mgr = chip->mgr;
 struct pcxhr_stream *stream = subs->runtime->private_data;

 mutex_lock(&mgr->setup_mutex);

 snd_printdd("pcxhr_close chip%d subs%d\n",
      chip->chip_idx, subs->number);


 if (--mgr->ref_count_rate == 0) {
  mgr->sample_rate = 0;
  pcxhr_hardware_timer(mgr, 0);
 }

 stream->status = PCXHR_STREAM_STATUS_FREE;
 stream->substream = ((void*)0);

 mutex_unlock(&mgr->setup_mutex);

 return 0;
}
