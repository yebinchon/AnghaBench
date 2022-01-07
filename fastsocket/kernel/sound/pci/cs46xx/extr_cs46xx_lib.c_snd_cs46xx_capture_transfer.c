
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int pcm_rec; } ;
struct snd_cs46xx {TYPE_1__ capt; } ;


 int snd_cs46xx_cp_trans_copy ;
 int snd_pcm_indirect_capture_transfer (struct snd_pcm_substream*,int *,int ) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs46xx_capture_transfer(struct snd_pcm_substream *substream)
{
 struct snd_cs46xx *chip = snd_pcm_substream_chip(substream);
 snd_pcm_indirect_capture_transfer(substream, &chip->capt.pcm_rec, snd_cs46xx_cp_trans_copy);
 return 0;
}
