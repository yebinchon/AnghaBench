
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ymfpci_pcm {int output_rear; int swap_rear; scalar_t__ output_front; } ;
struct snd_ymfpci {int spdif_pcm_bits; int spdif_bits; TYPE_2__* spdif_pcm_ctl; int card; int reg_lock; int spdif_opened; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ymfpci_pcm* private_data; } ;
struct TYPE_4__ {int id; TYPE_1__* vd; } ;
struct TYPE_3__ {int access; } ;


 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int YDSXGR_SPDIFOUTCTRL ;
 int YDSXGR_SPDIFOUTSTATUS ;
 int snd_ctl_notify (int ,int,int *) ;
 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_ymfpci_playback_open_1 (struct snd_pcm_substream*) ;
 int snd_ymfpci_readw (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writew (struct snd_ymfpci*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int ymfpci_open_extension (struct snd_ymfpci*) ;

__attribute__((used)) static int snd_ymfpci_playback_spdif_open(struct snd_pcm_substream *substream)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ymfpci_pcm *ypcm;
 int err;

 if ((err = snd_ymfpci_playback_open_1(substream)) < 0)
  return err;
 ypcm = runtime->private_data;
 ypcm->output_front = 0;
 ypcm->output_rear = 1;
 ypcm->swap_rear = 1;
 spin_lock_irq(&chip->reg_lock);
 snd_ymfpci_writew(chip, YDSXGR_SPDIFOUTCTRL,
     snd_ymfpci_readw(chip, YDSXGR_SPDIFOUTCTRL) | 2);
 ymfpci_open_extension(chip);
 chip->spdif_pcm_bits = chip->spdif_bits;
 snd_ymfpci_writew(chip, YDSXGR_SPDIFOUTSTATUS, chip->spdif_pcm_bits);
 chip->spdif_opened++;
 spin_unlock_irq(&chip->reg_lock);

 chip->spdif_pcm_ctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE |
         SNDRV_CTL_EVENT_MASK_INFO, &chip->spdif_pcm_ctl->id);
 return 0;
}
