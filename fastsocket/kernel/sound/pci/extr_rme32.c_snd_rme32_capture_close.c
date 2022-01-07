
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct rme32 {int lock; scalar_t__ capture_periodsize; int * capture_substream; } ;


 struct rme32* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_rme32_capture_close(struct snd_pcm_substream *substream)
{
 struct rme32 *rme32 = snd_pcm_substream_chip(substream);

 spin_lock_irq(&rme32->lock);
 rme32->capture_substream = ((void*)0);
 rme32->capture_periodsize = 0;
 spin_unlock(&rme32->lock);
 return 0;
}
