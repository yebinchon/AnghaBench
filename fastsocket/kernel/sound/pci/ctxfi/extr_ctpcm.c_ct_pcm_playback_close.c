
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; } ;
struct ct_atc {int (* spdif_out_passthru ) (struct ct_atc*,int ) ;} ;
struct TYPE_2__ {scalar_t__ device; } ;


 scalar_t__ IEC958 ;
 struct ct_atc* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct ct_atc*,int ) ;

__attribute__((used)) static int ct_pcm_playback_close(struct snd_pcm_substream *substream)
{
 struct ct_atc *atc = snd_pcm_substream_chip(substream);


 if (IEC958 == substream->pcm->device)
  atc->spdif_out_passthru(atc, 0);



 return 0;
}
