
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdsp {int capture_pid; int lock; int * capture_substream; } ;


 struct hdsp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_capture_release(struct snd_pcm_substream *substream)
{
 struct hdsp *hdsp = snd_pcm_substream_chip(substream);

 spin_lock_irq(&hdsp->lock);

 hdsp->capture_pid = -1;
 hdsp->capture_substream = ((void*)0);

 spin_unlock_irq(&hdsp->lock);
 return 0;
}
