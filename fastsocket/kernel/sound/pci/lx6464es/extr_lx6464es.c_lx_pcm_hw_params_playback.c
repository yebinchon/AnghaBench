
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int lx_pcm_hw_params (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int ) ;

__attribute__((used)) static int lx_pcm_hw_params_playback(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *hw_params)
{
 return lx_pcm_hw_params(substream, hw_params, 0);
}
