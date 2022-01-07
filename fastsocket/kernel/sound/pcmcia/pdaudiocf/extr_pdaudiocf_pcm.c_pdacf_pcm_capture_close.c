
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pdacf {int * pcm_substream; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;
 int pdacf_reinit (struct snd_pdacf*,int ) ;
 struct snd_pdacf* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int pdacf_pcm_capture_close(struct snd_pcm_substream *subs)
{
 struct snd_pdacf *chip = snd_pcm_substream_chip(subs);

 if (!chip)
  return -EINVAL;
 pdacf_reinit(chip, 0);
 chip->pcm_substream = ((void*)0);
 return 0;
}
