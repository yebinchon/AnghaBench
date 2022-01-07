
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct cmipci {int* opened; int open_mutex; int reg_lock; TYPE_1__* channel; } ;
struct TYPE_2__ {scalar_t__ is_dac; struct snd_pcm_substream* substream; } ;


 int CM_ENDBDAC ;
 int CM_OPEN_CH_MASK ;
 int CM_OPEN_DAC ;
 int CM_REG_MISC_CTRL ;
 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int open_device_check(struct cmipci *cm, int mode, struct snd_pcm_substream *subs)
{
 int ch = mode & CM_OPEN_CH_MASK;






 mutex_lock(&cm->open_mutex);
 if (cm->opened[ch]) {
  mutex_unlock(&cm->open_mutex);
  return -EBUSY;
 }
 cm->opened[ch] = mode;
 cm->channel[ch].substream = subs;
 if (! (mode & CM_OPEN_DAC)) {

  cm->channel[ch].is_dac = 0;
  spin_lock_irq(&cm->reg_lock);
  snd_cmipci_clear_bit(cm, CM_REG_MISC_CTRL, CM_ENDBDAC);
  spin_unlock_irq(&cm->reg_lock);
 }
 mutex_unlock(&cm->open_mutex);
 return 0;
}
