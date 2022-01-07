
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_trident_voice {unsigned int LBA; int isync; int isync_mark; int ESO; int isync_ESO; int FMC; int RVol; int CVol; int GVSel; int Pan; int Vol; scalar_t__ Attribute; scalar_t__ FMS; scalar_t__ Alpha; scalar_t__ EC; int CTRL; scalar_t__ CSO; int isync_max; int spurious_threshold; int Delta; TYPE_1__* memblk; } ;
struct snd_trident {int bDMAStart; int reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int dma_addr; int rate; int channels; int period_size; int buffer_size; int format; struct snd_trident_voice* private_data; } ;
struct TYPE_2__ {unsigned int offset; } ;


 int LEGACY_DMAR0 ;
 int LEGACY_DMAR11 ;
 int LEGACY_DMAR15 ;
 int LEGACY_DMAR4 ;
 int LEGACY_DMAR6 ;
 int T4D_SBBL_SBCL ;
 int T4D_SBDELTA_DELTA_R ;
 int TRID_REG (struct snd_trident*,int ) ;
 int outb (unsigned int,int ) ;
 int outl (unsigned int,int ) ;
 int outw (unsigned int,int ) ;
 scalar_t__ snd_pcm_format_signed (int ) ;
 int snd_pcm_format_width (int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_trident_control_mode (struct snd_pcm_substream*) ;
 int snd_trident_convert_rate (unsigned int) ;
 int snd_trident_spurious_threshold (unsigned int,int) ;
 int snd_trident_write_voice_regs (struct snd_trident*,struct snd_trident_voice*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_trident_voice *voice = runtime->private_data;
 unsigned int val, ESO_bytes;

 spin_lock_irq(&trident->reg_lock);


 outb(0, TRID_REG(trident, LEGACY_DMAR15));


 outb(0x54, TRID_REG(trident, LEGACY_DMAR11));


 voice->LBA = runtime->dma_addr;
 outl(voice->LBA, TRID_REG(trident, LEGACY_DMAR0));
 if (voice->memblk)
  voice->LBA = voice->memblk->offset;


 ESO_bytes = snd_pcm_lib_buffer_bytes(substream) - 1;
 outb((ESO_bytes & 0x00ff0000) >> 16, TRID_REG(trident, LEGACY_DMAR6));
 outw((ESO_bytes & 0x0000ffff), TRID_REG(trident, LEGACY_DMAR4));
 ESO_bytes++;


 val = (((unsigned int) 48000L << 12) + (runtime->rate/2)) / runtime->rate;
 outw(val, TRID_REG(trident, T4D_SBDELTA_DELTA_R));


 if (snd_pcm_format_width(runtime->format) == 16) {
  val = (unsigned short) ((ESO_bytes >> 1) - 1);
 } else {
  val = (unsigned short) (ESO_bytes - 1);
 }

 outl((val << 16) | val, TRID_REG(trident, T4D_SBBL_SBCL));



 trident->bDMAStart = 0x19;

 if (snd_pcm_format_width(runtime->format) == 16)
  trident->bDMAStart |= 0x80;
 if (snd_pcm_format_signed(runtime->format))
  trident->bDMAStart |= 0x20;
 if (runtime->channels > 1)
  trident->bDMAStart |= 0x40;



 voice->Delta = snd_trident_convert_rate(runtime->rate);
 voice->spurious_threshold = snd_trident_spurious_threshold(runtime->rate, runtime->period_size);
 voice->isync = 1;
 voice->isync_mark = runtime->period_size;
 voice->isync_max = runtime->buffer_size;


 voice->CSO = 0;
 voice->ESO = voice->isync_ESO = (runtime->period_size * 2) + 6 - 1;
 voice->CTRL = snd_trident_control_mode(substream);
 voice->FMC = 3;
 voice->RVol = 0x7f;
 voice->CVol = 0x7f;
 voice->GVSel = 1;
 voice->Pan = 0x7f;
 voice->Vol = 0x3ff;
 voice->EC = 0;
 voice->Alpha = 0;
 voice->FMS = 0;
 voice->Attribute = 0;

 snd_trident_write_voice_regs(trident, voice);

 spin_unlock_irq(&trident->reg_lock);
 return 0;
}
