
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {size_t number; } ;
struct snd_emu10k1_fx8010_pcm {int tram_shift; int buffer_size; int tram_pos; scalar_t__ gpr_trigger; int * irq; int gpr_running; } ;
struct TYPE_2__ {struct snd_emu10k1_fx8010_pcm* pcm; } ;
struct snd_emu10k1 {int reg_lock; scalar_t__ gpr_base; TYPE_1__ fx8010; } ;


 int EINVAL ;
 int INITIAL_TRAM_POS (int ) ;






 int SPCS0 ;
 int SPCS_CHANNELNUM_LEFT ;
 int SPCS_CLKACCY_1000PPM ;
 int SPCS_COPYRIGHT ;
 int SPCS_EMPHASIS_NONE ;
 int SPCS_GENERATIONSTATUS ;
 int SPCS_NOTAUDIODATA ;
 int SPCS_SAMPLERATE_48 ;
 int SPCS_SOURCENUM_UNSPEC ;
 int snd_emu10k1_fx8010_playback_irq ;
 int snd_emu10k1_fx8010_playback_transfer (struct snd_pcm_substream*) ;
 int snd_emu10k1_fx8010_register_irq_handler (struct snd_emu10k1*,int ,int ,struct snd_pcm_substream*,int **) ;
 int snd_emu10k1_fx8010_unregister_irq_handler (struct snd_emu10k1*,int *) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,scalar_t__,int ,int) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_emu10k1_fx8010_playback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_emu10k1_fx8010_pcm *pcm = &emu->fx8010.pcm[substream->number];
 int result = 0;

 spin_lock(&emu->reg_lock);
 switch (cmd) {
 case 130:

 case 132:
 case 131:
  result = snd_emu10k1_fx8010_register_irq_handler(emu, snd_emu10k1_fx8010_playback_irq, pcm->gpr_running, substream, &pcm->irq);
  if (result < 0)
   goto __err;
  snd_emu10k1_fx8010_playback_transfer(substream);
  snd_emu10k1_ptr_write(emu, emu->gpr_base + pcm->gpr_trigger, 0, 1);
  break;
 case 129:
 case 133:
 case 128:
  snd_emu10k1_fx8010_unregister_irq_handler(emu, pcm->irq); pcm->irq = ((void*)0);
  snd_emu10k1_ptr_write(emu, emu->gpr_base + pcm->gpr_trigger, 0, 0);
  pcm->tram_pos = INITIAL_TRAM_POS(pcm->buffer_size);
  pcm->tram_shift = 0;
  break;
 default:
  result = -EINVAL;
  break;
 }
      __err:
 spin_unlock(&emu->reg_lock);
 return result;
}
