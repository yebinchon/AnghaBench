
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {size_t number; } ;
struct snd_emu10k1_fx8010_pcm {int pcm_rec; scalar_t__ gpr_ptr; scalar_t__ gpr_trigger; } ;
struct TYPE_2__ {struct snd_emu10k1_fx8010_pcm* pcm; } ;
struct snd_emu10k1 {scalar_t__ gpr_base; TYPE_1__ fx8010; } ;
typedef int snd_pcm_uframes_t ;


 int snd_emu10k1_ptr_read (struct snd_emu10k1*,scalar_t__,int ) ;
 int snd_pcm_indirect_playback_pointer (struct snd_pcm_substream*,int *,size_t) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_emu10k1_fx8010_playback_pointer(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_emu10k1_fx8010_pcm *pcm = &emu->fx8010.pcm[substream->number];
 size_t ptr;

 if (!snd_emu10k1_ptr_read(emu, emu->gpr_base + pcm->gpr_trigger, 0))
  return 0;
 ptr = snd_emu10k1_ptr_read(emu, emu->gpr_base + pcm->gpr_ptr, 0) << 2;
 return snd_pcm_indirect_playback_pointer(substream, &pcm->pcm_rec, ptr);
}
