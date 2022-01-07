
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_es18xx {int caps; int active; TYPE_5__* master_volume; int card; TYPE_4__* master_switch; TYPE_3__* hw_volume; TYPE_2__* hw_switch; TYPE_1__* rmidi; scalar_t__ port; int playback_b_substream; int capture_a_substream; int playback_a_substream; scalar_t__ ctrl_port; } ;
typedef int irqreturn_t ;
struct TYPE_10__ {int id; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {int private_data; } ;


 int ADC1 ;
 unsigned char AUDIO1_IRQ ;
 unsigned char AUDIO2_IRQ ;
 int DAC1 ;
 int DAC2 ;
 int ES18XX_CONTROL ;
 int ES18XX_HWV ;
 unsigned char HWV_IRQ ;
 int IRQ_HANDLED ;
 unsigned char MPU_IRQ ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int inb (scalar_t__) ;
 int snd_ctl_notify (int ,int ,int *) ;
 int snd_es18xx_mixer_bits (struct snd_es18xx*,int,int,int) ;
 int snd_es18xx_mixer_read (struct snd_es18xx*,int) ;
 int snd_es18xx_mixer_write (struct snd_es18xx*,int,int) ;
 int snd_mpu401_uart_interrupt (int,int ) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static irqreturn_t snd_es18xx_interrupt(int irq, void *dev_id)
{
 struct snd_es18xx *chip = dev_id;
 unsigned char status;

 if (chip->caps & ES18XX_CONTROL) {

  status = inb(chip->ctrl_port + 6);
 } else {

  status = snd_es18xx_mixer_read(chip, 0x7f) >> 4;
 }
        if (status & AUDIO2_IRQ) {
                if (chip->active & DAC2)
                 snd_pcm_period_elapsed(chip->playback_a_substream);

                snd_es18xx_mixer_bits(chip, 0x7A, 0x80, 0x00);
        }
        if (status & AUDIO1_IRQ) {

                if (chip->active & ADC1)
                 snd_pcm_period_elapsed(chip->capture_a_substream);

                else if (chip->active & DAC1)
                 snd_pcm_period_elapsed(chip->playback_b_substream);

  inb(chip->port + 0x0E);
        }


 if ((status & MPU_IRQ) && chip->rmidi)
  snd_mpu401_uart_interrupt(irq, chip->rmidi->private_data);


 if (status & HWV_IRQ) {
  int split = 0;
  if (chip->caps & ES18XX_HWV) {
   split = snd_es18xx_mixer_read(chip, 0x64) & 0x80;
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE, &chip->hw_switch->id);
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE, &chip->hw_volume->id);
  }
  if (!split) {
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE, &chip->master_switch->id);
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE, &chip->master_volume->id);
  }

  snd_es18xx_mixer_write(chip, 0x66, 0x00);
 }
 return IRQ_HANDLED;
}
