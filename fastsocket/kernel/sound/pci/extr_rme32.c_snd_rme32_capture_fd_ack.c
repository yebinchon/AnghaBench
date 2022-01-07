
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct rme32 {int capture_pcm; } ;


 int snd_pcm_indirect_capture_transfer (struct snd_pcm_substream*,int *,int ) ;
 struct rme32* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_rme32_cp_trans_copy ;

__attribute__((used)) static int snd_rme32_capture_fd_ack(struct snd_pcm_substream *substream)
{
 struct rme32 *rme32 = snd_pcm_substream_chip(substream);
 snd_pcm_indirect_capture_transfer(substream, &rme32->capture_pcm,
       snd_rme32_cp_trans_copy);
 return 0;
}
