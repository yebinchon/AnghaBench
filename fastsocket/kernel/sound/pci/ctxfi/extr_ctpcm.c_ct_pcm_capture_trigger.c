
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct ct_atc_pcm* private_data; } ;
struct ct_atc_pcm {int dummy; } ;
struct ct_atc {int (* pcm_capture_stop ) (struct ct_atc*,struct ct_atc_pcm*) ;int (* pcm_capture_start ) (struct ct_atc*,struct ct_atc_pcm*) ;} ;




 struct ct_atc* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct ct_atc*,struct ct_atc_pcm*) ;
 int stub2 (struct ct_atc*,struct ct_atc_pcm*) ;
 int stub3 (struct ct_atc*,struct ct_atc_pcm*) ;

__attribute__((used)) static int
ct_pcm_capture_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct ct_atc *atc = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct ct_atc_pcm *apcm = runtime->private_data;

 switch (cmd) {
 case 129:
  atc->pcm_capture_start(atc, apcm);
  break;
 case 128:
  atc->pcm_capture_stop(atc, apcm);
  break;
 default:
  atc->pcm_capture_stop(atc, apcm);
  break;
 }

 return 0;
}
