
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct loopback_pcm* private_data; } ;
struct loopback_pcm {TYPE_1__* loopback; struct loopback_cable* cable; } ;
struct loopback_cable {int valid; } ;
struct TYPE_2__ {int cable_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int loopback_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct loopback_pcm *dpcm = runtime->private_data;
 struct loopback_cable *cable = dpcm->cable;

 mutex_lock(&dpcm->loopback->cable_lock);
 cable->valid &= ~(1 << substream->stream);
 mutex_unlock(&dpcm->loopback->cable_lock);
 return snd_pcm_lib_free_pages(substream);
}
