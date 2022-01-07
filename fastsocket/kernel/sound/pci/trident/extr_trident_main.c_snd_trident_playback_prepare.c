
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_trident_voice {int ESO; int FMC; int GVSel; int Vol; int RVol; int CVol; int Pan; int Attribute; int isync2; int isync_mark; scalar_t__ FMS; scalar_t__ Alpha; scalar_t__ EC; int CTRL; scalar_t__ CSO; int LBA; int spurious_threshold; int Delta; TYPE_1__* memblk; struct snd_trident_voice* extra; } ;
struct snd_trident_pcm_mixer {int vol; int rvol; int cvol; int pan; } ;
struct snd_trident {scalar_t__ device; int reg_lock; struct snd_trident_pcm_mixer* pcm_mixer; } ;
struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int buffer_size; int dma_addr; int rate; struct snd_trident_voice* private_data; } ;
struct TYPE_2__ {int offset; } ;


 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_trident_control_mode (struct snd_pcm_substream*) ;
 int snd_trident_convert_rate (int ) ;
 int snd_trident_spurious_threshold (int ,int) ;
 int snd_trident_write_voice_regs (struct snd_trident*,struct snd_trident_voice*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_trident_voice *voice = runtime->private_data;
 struct snd_trident_voice *evoice = voice->extra;
 struct snd_trident_pcm_mixer *mix = &trident->pcm_mixer[substream->number];

 spin_lock_irq(&trident->reg_lock);


 voice->Delta = snd_trident_convert_rate(runtime->rate);
 voice->spurious_threshold = snd_trident_spurious_threshold(runtime->rate, runtime->period_size);


 if (voice->memblk)
  voice->LBA = voice->memblk->offset;
 else
  voice->LBA = runtime->dma_addr;

 voice->CSO = 0;
 voice->ESO = runtime->buffer_size - 1;
 voice->CTRL = snd_trident_control_mode(substream);
 voice->FMC = 3;
 voice->GVSel = 1;
 voice->EC = 0;
 voice->Alpha = 0;
 voice->FMS = 0;
 voice->Vol = mix->vol;
 voice->RVol = mix->rvol;
 voice->CVol = mix->cvol;
 voice->Pan = mix->pan;
 voice->Attribute = 0;




 voice->Attribute = 0;


 snd_trident_write_voice_regs(trident, voice);

 if (evoice != ((void*)0)) {
  evoice->Delta = voice->Delta;
  evoice->spurious_threshold = voice->spurious_threshold;
  evoice->LBA = voice->LBA;
  evoice->CSO = 0;
  evoice->ESO = (runtime->period_size * 2) + 4 - 1;
  evoice->CTRL = voice->CTRL;
  evoice->FMC = 3;
  evoice->GVSel = trident->device == TRIDENT_DEVICE_ID_SI7018 ? 0 : 1;
  evoice->EC = 0;
  evoice->Alpha = 0;
  evoice->FMS = 0;
  evoice->Vol = 0x3ff;
  evoice->RVol = evoice->CVol = 0x7f;
  evoice->Pan = 0x7f;




  evoice->Attribute = 0;

  snd_trident_write_voice_regs(trident, evoice);
  evoice->isync2 = 1;
  evoice->isync_mark = runtime->period_size;
  evoice->ESO = (runtime->period_size * 2) - 1;
 }

 spin_unlock_irq(&trident->reg_lock);

 return 0;
}
