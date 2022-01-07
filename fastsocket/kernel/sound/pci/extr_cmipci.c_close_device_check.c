
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmipci {int* opened; int open_mutex; int reg_lock; TYPE_1__* channel; } ;
struct TYPE_2__ {int is_dac; int * substream; scalar_t__ running; } ;


 int CM_ENDBDAC ;
 int CM_OPEN_CH_MASK ;
 int CM_REG_MISC_CTRL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_cmipci_ch_reset (struct cmipci*,int) ;
 int snd_cmipci_set_bit (struct cmipci*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void close_device_check(struct cmipci *cm, int mode)
{
 int ch = mode & CM_OPEN_CH_MASK;

 mutex_lock(&cm->open_mutex);
 if (cm->opened[ch] == mode) {
  if (cm->channel[ch].substream) {
   snd_cmipci_ch_reset(cm, ch);
   cm->channel[ch].running = 0;
   cm->channel[ch].substream = ((void*)0);
  }
  cm->opened[ch] = 0;
  if (! cm->channel[ch].is_dac) {

   cm->channel[ch].is_dac = 1;
   spin_lock_irq(&cm->reg_lock);
   snd_cmipci_set_bit(cm, CM_REG_MISC_CTRL, CM_ENDBDAC);
   spin_unlock_irq(&cm->reg_lock);
  }
 }
 mutex_unlock(&cm->open_mutex);
}
