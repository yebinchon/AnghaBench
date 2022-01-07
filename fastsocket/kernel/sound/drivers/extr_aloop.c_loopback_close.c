
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {size_t number; size_t stream; TYPE_1__* runtime; struct loopback* private_data; } ;
struct loopback_pcm {int dummy; } ;
struct loopback_cable {int ** streams; } ;
struct loopback {int cable_lock; struct loopback_cable*** cables; } ;
struct TYPE_2__ {struct loopback_pcm* private_data; } ;


 int get_cable_index (struct snd_pcm_substream*) ;
 int kfree (struct loopback_cable*) ;
 int loopback_timer_stop (struct loopback_pcm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int loopback_close(struct snd_pcm_substream *substream)
{
 struct loopback *loopback = substream->private_data;
 struct loopback_pcm *dpcm = substream->runtime->private_data;
 struct loopback_cable *cable;
 int dev = get_cable_index(substream);

 loopback_timer_stop(dpcm);
 mutex_lock(&loopback->cable_lock);
 cable = loopback->cables[substream->number][dev];
 if (cable->streams[!substream->stream]) {

  cable->streams[substream->stream] = ((void*)0);
 } else {

  loopback->cables[substream->number][dev] = ((void*)0);
  kfree(cable);
 }
 mutex_unlock(&loopback->cable_lock);
 return 0;
}
