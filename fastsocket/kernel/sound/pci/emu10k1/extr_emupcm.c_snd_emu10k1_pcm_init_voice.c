
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int format; } ;
struct snd_emu10k1_voice {int number; TYPE_1__* epcm; } ;
struct snd_emu10k1_pcm_mixer {int ** send_volume; int ** send_routing; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct snd_emu10k1 {int reg_lock; TYPE_3__ silent_page; TYPE_2__* card_capabilities; scalar_t__ audigy; } ;
typedef int send_routing ;
typedef int send_amount ;
struct TYPE_5__ {scalar_t__ emu_model; } ;
struct TYPE_4__ {unsigned int ccca_start_addr; struct snd_pcm_substream* substream; } ;


 int ATKHLDM ;
 int ATKHLDV ;
 int A_FXRT1 ;
 int A_FXRT2 ;
 int A_SENDAMOUNTS ;
 int CCCA ;
 unsigned int CCCA_8BITSELECT ;
 int CPF ;
 int CPF_STEREO_MASK ;
 int CVCF ;
 int DCYSUSM ;
 int DSL ;
 int ENVVAL ;
 int ENVVOL ;
 int FM2FRQ2 ;
 int FMMOD ;
 int FXRT ;
 int LFOVAL1 ;
 int LFOVAL2 ;
 int MAPA ;
 int MAPB ;
 unsigned int MAP_PTI_MASK ;
 int PEFE_FILTERAMOUNT ;
 int PEFE_PITCHAMOUNT ;
 unsigned int PITCH_48000 ;
 int PSST ;
 int PTRX ;
 int TREMFRQ ;
 int VTFT ;
 int Z1 ;
 int Z2 ;
 unsigned int emu10k1_calc_pitch_target (int ) ;
 unsigned int emu10k1_ccis (int,int) ;
 unsigned int emu10k1_select_interprom (unsigned int) ;
 int memcpy (unsigned char*,int *,int) ;
 int memset (unsigned char*,int ,int) ;
 int snd_emu10k1_compose_audigy_fxrt1 (unsigned char*) ;
 int snd_emu10k1_compose_audigy_fxrt2 (unsigned char*) ;
 int snd_emu10k1_compose_send_routing (unsigned char*) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int,int) ;
 int snd_pcm_format_width (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_emu10k1_pcm_init_voice(struct snd_emu10k1 *emu,
           int master, int extra,
           struct snd_emu10k1_voice *evoice,
           unsigned int start_addr,
           unsigned int end_addr,
           struct snd_emu10k1_pcm_mixer *mix)
{
 struct snd_pcm_substream *substream = evoice->epcm->substream;
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned int silent_page, tmp;
 int voice, stereo, w_16;
 unsigned char attn, send_amount[8];
 unsigned char send_routing[8];
 unsigned long flags;
 unsigned int pitch_target;
 unsigned int ccis;

 voice = evoice->number;
 stereo = runtime->channels == 2;
 w_16 = snd_pcm_format_width(runtime->format) == 16;

 if (!extra && stereo) {
  start_addr >>= 1;
  end_addr >>= 1;
 }
 if (w_16) {
  start_addr >>= 1;
  end_addr >>= 1;
 }

 spin_lock_irqsave(&emu->reg_lock, flags);


 if (extra) {
  attn = 0;
  memset(send_routing, 0, sizeof(send_routing));
  send_routing[0] = 0;
  send_routing[1] = 1;
  send_routing[2] = 2;
  send_routing[3] = 3;
  memset(send_amount, 0, sizeof(send_amount));
 } else {

  tmp = stereo ? (master ? 1 : 2) : 0;
  memcpy(send_routing, &mix->send_routing[tmp][0], 8);
  memcpy(send_amount, &mix->send_volume[tmp][0], 8);
 }

 ccis = emu10k1_ccis(stereo, w_16);

 if (master) {
  evoice->epcm->ccca_start_addr = start_addr + ccis;
  if (extra) {
   start_addr += ccis;
   end_addr += ccis;
  }
  if (stereo && !extra) {
   snd_emu10k1_ptr_write(emu, CPF, voice, CPF_STEREO_MASK);
   snd_emu10k1_ptr_write(emu, CPF, (voice + 1), CPF_STEREO_MASK);
  } else {
   snd_emu10k1_ptr_write(emu, CPF, voice, 0);
  }
 }


 if (emu->audigy) {
  snd_emu10k1_ptr_write(emu, A_FXRT1, voice,
          snd_emu10k1_compose_audigy_fxrt1(send_routing));
  snd_emu10k1_ptr_write(emu, A_FXRT2, voice,
          snd_emu10k1_compose_audigy_fxrt2(send_routing));
  snd_emu10k1_ptr_write(emu, A_SENDAMOUNTS, voice,
          ((unsigned int)send_amount[4] << 24) |
          ((unsigned int)send_amount[5] << 16) |
          ((unsigned int)send_amount[6] << 8) |
          (unsigned int)send_amount[7]);
 } else
  snd_emu10k1_ptr_write(emu, FXRT, voice,
          snd_emu10k1_compose_send_routing(send_routing));


 snd_emu10k1_ptr_write(emu, PTRX, voice, (send_amount[0] << 8) | send_amount[1]);
 snd_emu10k1_ptr_write(emu, DSL, voice, end_addr | (send_amount[3] << 24));
 snd_emu10k1_ptr_write(emu, PSST, voice, start_addr | (send_amount[2] << 24));
 if (emu->card_capabilities->emu_model)
  pitch_target = PITCH_48000;
 else
  pitch_target = emu10k1_calc_pitch_target(runtime->rate);
 if (extra)
  snd_emu10k1_ptr_write(emu, CCCA, voice, start_addr |
         emu10k1_select_interprom(pitch_target) |
         (w_16 ? 0 : CCCA_8BITSELECT));
 else
  snd_emu10k1_ptr_write(emu, CCCA, voice, (start_addr + ccis) |
         emu10k1_select_interprom(pitch_target) |
         (w_16 ? 0 : CCCA_8BITSELECT));

 snd_emu10k1_ptr_write(emu, Z1, voice, 0);
 snd_emu10k1_ptr_write(emu, Z2, voice, 0);

 silent_page = ((unsigned int)emu->silent_page.addr << 1) | MAP_PTI_MASK;
 snd_emu10k1_ptr_write(emu, MAPA, voice, silent_page);
 snd_emu10k1_ptr_write(emu, MAPB, voice, silent_page);

 snd_emu10k1_ptr_write(emu, CVCF, voice, 0xffff);
 snd_emu10k1_ptr_write(emu, VTFT, voice, 0xffff);
 snd_emu10k1_ptr_write(emu, ATKHLDM, voice, 0);
 snd_emu10k1_ptr_write(emu, DCYSUSM, voice, 0x007f);
 snd_emu10k1_ptr_write(emu, LFOVAL1, voice, 0x8000);
 snd_emu10k1_ptr_write(emu, LFOVAL2, voice, 0x8000);
 snd_emu10k1_ptr_write(emu, FMMOD, voice, 0);
 snd_emu10k1_ptr_write(emu, TREMFRQ, voice, 0);
 snd_emu10k1_ptr_write(emu, FM2FRQ2, voice, 0);
 snd_emu10k1_ptr_write(emu, ENVVAL, voice, 0x8000);

 snd_emu10k1_ptr_write(emu, ATKHLDV, voice, 0x7f7f);
 snd_emu10k1_ptr_write(emu, ENVVOL, voice, 0x0000);

 snd_emu10k1_ptr_write(emu, PEFE_FILTERAMOUNT, voice, 0x7f);

 snd_emu10k1_ptr_write(emu, PEFE_PITCHAMOUNT, voice, 0);

 spin_unlock_irqrestore(&emu->reg_lock, flags);
}
