
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcxhr {struct pcxhr_mgr* mgr; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct pcxhr_mgr {scalar_t__ sample_rate; int setup_mutex; } ;
struct TYPE_2__ {scalar_t__ rate; int buffer_size; int periods; int period_size; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcxhr_hardware_timer (struct pcxhr_mgr*,int) ;
 int pcxhr_set_clock (struct pcxhr_mgr*,scalar_t__) ;
 struct snd_pcxhr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_printdd (char*,int ,int ,int ) ;

__attribute__((used)) static int pcxhr_prepare(struct snd_pcm_substream *subs)
{
 struct snd_pcxhr *chip = snd_pcm_substream_chip(subs);
 struct pcxhr_mgr *mgr = chip->mgr;
 int err = 0;

 snd_printdd("pcxhr_prepare : period_size(%lx) periods(%x) buffer_size(%lx)\n",
      subs->runtime->period_size, subs->runtime->periods,
      subs->runtime->buffer_size);

 mutex_lock(&mgr->setup_mutex);

 do {


  if (mgr->sample_rate != subs->runtime->rate) {
   err = pcxhr_set_clock(mgr, subs->runtime->rate);
   if (err)
    break;
   if (mgr->sample_rate == 0)

    err = pcxhr_hardware_timer(mgr, 1);
   mgr->sample_rate = subs->runtime->rate;
  }
 } while(0);

 mutex_unlock(&mgr->setup_mutex);

 return err;
}
