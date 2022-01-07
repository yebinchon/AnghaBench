
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_trident_voice {int Delta; unsigned int LBA; int isync; int isync3; int isync_mark; int isync_max; int ESO; int isync_ESO; int FMC; int RVol; int CVol; int GVSel; int Pan; int Vol; int CSO; int Attribute; int isync2; scalar_t__ FMS; scalar_t__ Alpha; scalar_t__ EC; void* CTRL; void* spurious_threshold; TYPE_1__* memblk; struct snd_trident_voice* extra; } ;
struct snd_trident_pcm_mixer {int vol; int rvol; int cvol; int pan; } ;
struct snd_trident {scalar_t__ device; int spdif_pcm_ctrl; unsigned int spdif_pcm_bits; int reg_lock; struct snd_trident_pcm_mixer* pcm_mixer; } ;
struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; int period_size; unsigned int dma_addr; int buffer_size; struct snd_trident_voice* private_data; } ;
struct TYPE_2__ {unsigned int offset; } ;


 scalar_t__ NX_SPCSTATUS ;
 scalar_t__ NX_SPCTRL_SPCSO ;
 scalar_t__ NX_SPESO ;
 scalar_t__ NX_SPLBA ;
 scalar_t__ SI_SERIAL_INTF_CTRL ;
 scalar_t__ SI_SPDIF_CS ;
 unsigned int SPDIF_EN ;
 scalar_t__ T4D_LFO_GC_CIR ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int TRID_REG (struct snd_trident*,scalar_t__) ;
 unsigned int inl (int ) ;
 int outb (int,int ) ;
 int outl (unsigned int,int ) ;
 int outw (int,int ) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 void* snd_trident_control_mode (struct snd_pcm_substream*) ;
 int snd_trident_convert_rate (int) ;
 void* snd_trident_spurious_threshold (int,int) ;
 int snd_trident_write_voice_regs (struct snd_trident*,struct snd_trident_voice*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_spdif_prepare(struct snd_pcm_substream *substream)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_trident_voice *voice = runtime->private_data;
 struct snd_trident_voice *evoice = voice->extra;
 struct snd_trident_pcm_mixer *mix = &trident->pcm_mixer[substream->number];
 unsigned int RESO, LBAO;
 unsigned int temp;

 spin_lock_irq(&trident->reg_lock);

 if (trident->device != TRIDENT_DEVICE_ID_SI7018) {


  voice->Delta = snd_trident_convert_rate(runtime->rate);
  voice->spurious_threshold = snd_trident_spurious_threshold(runtime->rate, runtime->period_size);


  LBAO = runtime->dma_addr;
  if (voice->memblk)
   voice->LBA = voice->memblk->offset;
  else
   voice->LBA = LBAO;

  voice->isync = 1;
  voice->isync3 = 1;
  voice->isync_mark = runtime->period_size;
  voice->isync_max = runtime->buffer_size;


  RESO = runtime->buffer_size - 1;
  voice->ESO = voice->isync_ESO = (runtime->period_size * 2) + 6 - 1;


  voice->CTRL = snd_trident_control_mode(substream);

  voice->FMC = 3;
  voice->RVol = 0x7f;
  voice->CVol = 0x7f;
  voice->GVSel = 1;
  voice->Pan = 0x7f;
  voice->Vol = 0x3ff;
  voice->EC = 0;
  voice->CSO = 0;
  voice->Alpha = 0;
  voice->FMS = 0;
  voice->Attribute = 0;


  snd_trident_write_voice_regs(trident, voice);

  outw((RESO & 0xffff), TRID_REG(trident, NX_SPESO));
  outb((RESO >> 16), TRID_REG(trident, NX_SPESO + 2));
  outl((LBAO & 0xfffffffc), TRID_REG(trident, NX_SPLBA));
  outw((voice->CSO & 0xffff), TRID_REG(trident, NX_SPCTRL_SPCSO));
  outb((voice->CSO >> 16), TRID_REG(trident, NX_SPCTRL_SPCSO + 2));


  outb(trident->spdif_pcm_ctrl, TRID_REG(trident, NX_SPCTRL_SPCSO + 3));
  outl(trident->spdif_pcm_bits, TRID_REG(trident, NX_SPCSTATUS));

 } else {


  voice->Delta = 0x800;
  voice->spurious_threshold = snd_trident_spurious_threshold(48000, runtime->period_size);


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
  voice->Attribute = (1<<(30-16))|(7<<(26-16))|
       (0<<(24-16))|(0<<(19-16));

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

  outl(trident->spdif_pcm_bits, TRID_REG(trident, SI_SPDIF_CS));
  temp = inl(TRID_REG(trident, T4D_LFO_GC_CIR));
  temp &= ~(1<<19);
  outl(temp, TRID_REG(trident, T4D_LFO_GC_CIR));
  temp = inl(TRID_REG(trident, SI_SERIAL_INTF_CTRL));
  temp |= SPDIF_EN;
  outl(temp, TRID_REG(trident, SI_SERIAL_INTF_CTRL));
 }

 spin_unlock_irq(&trident->reg_lock);

 return 0;
}
