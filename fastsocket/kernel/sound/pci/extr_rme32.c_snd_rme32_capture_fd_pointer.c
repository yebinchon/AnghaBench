
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct rme32 {int capture_pcm; } ;
typedef int snd_pcm_uframes_t ;


 int snd_pcm_indirect_capture_pointer (struct snd_pcm_substream*,int *,int ) ;
 struct rme32* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_rme32_pcm_byteptr (struct rme32*) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_rme32_capture_fd_pointer(struct snd_pcm_substream *substream)
{
 struct rme32 *rme32 = snd_pcm_substream_chip(substream);
 return snd_pcm_indirect_capture_pointer(substream, &rme32->capture_pcm,
      snd_rme32_pcm_byteptr(rme32));
}
