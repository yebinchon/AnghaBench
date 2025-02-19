
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; struct aaci* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct aaci_runtime {int cr; int fifosz; } ;
struct aaci {int fifosize; } ;
struct TYPE_2__ {struct aaci_runtime* private_data; } ;


 int CR_COMPACT ;
 int CR_FEN ;
 int CR_SL3 ;
 int CR_SL4 ;
 int CR_SZ16 ;
 int aaci_pcm_hw_params (struct snd_pcm_substream*,struct aaci_runtime*,struct snd_pcm_hw_params*) ;

__attribute__((used)) static int aaci_pcm_capture_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params)
{
 struct aaci *aaci = substream->private_data;
 struct aaci_runtime *aacirun = substream->runtime->private_data;
 int ret;

 ret = aaci_pcm_hw_params(substream, aacirun, params);

 if (ret >= 0) {
  aacirun->cr = CR_FEN | CR_COMPACT | CR_SZ16;


  aacirun->cr |= CR_SL3 | CR_SL4;

  aacirun->fifosz = aaci->fifosize * 4;

  if (aacirun->cr & CR_COMPACT)
   aacirun->fifosz >>= 1;
 }
 return ret;
}
