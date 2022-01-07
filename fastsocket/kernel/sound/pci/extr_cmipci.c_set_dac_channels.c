
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci_pcm {int fmt; int ch; } ;
struct cmipci {int reg_lock; scalar_t__ can_multi_ch; } ;


 int CM_CHB3D ;
 int CM_CHB3D5C ;
 int CM_CHB3D6C ;
 int CM_CHB3D8C ;
 int CM_NXCHG ;
 int CM_REG_CHFORMAT ;
 int CM_REG_EXT_MISC ;
 int CM_REG_LEGACY_CTRL ;
 int CM_REG_MISC_CTRL ;
 int CM_XCHGDAC ;
 int EINVAL ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,int ) ;
 int snd_cmipci_set_bit (struct cmipci*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int set_dac_channels(struct cmipci *cm, struct cmipci_pcm *rec, int channels)
{
 if (channels > 2) {
  if (!cm->can_multi_ch || !rec->ch)
   return -EINVAL;
  if (rec->fmt != 0x03)
   return -EINVAL;
 }

 if (cm->can_multi_ch) {
  spin_lock_irq(&cm->reg_lock);
  if (channels > 2) {
   snd_cmipci_set_bit(cm, CM_REG_LEGACY_CTRL, CM_NXCHG);
   snd_cmipci_set_bit(cm, CM_REG_MISC_CTRL, CM_XCHGDAC);
  } else {
   snd_cmipci_clear_bit(cm, CM_REG_LEGACY_CTRL, CM_NXCHG);
   snd_cmipci_clear_bit(cm, CM_REG_MISC_CTRL, CM_XCHGDAC);
  }
  if (channels == 8)
   snd_cmipci_set_bit(cm, CM_REG_EXT_MISC, CM_CHB3D8C);
  else
   snd_cmipci_clear_bit(cm, CM_REG_EXT_MISC, CM_CHB3D8C);
  if (channels == 6) {
   snd_cmipci_set_bit(cm, CM_REG_CHFORMAT, CM_CHB3D5C);
   snd_cmipci_set_bit(cm, CM_REG_LEGACY_CTRL, CM_CHB3D6C);
  } else {
   snd_cmipci_clear_bit(cm, CM_REG_CHFORMAT, CM_CHB3D5C);
   snd_cmipci_clear_bit(cm, CM_REG_LEGACY_CTRL, CM_CHB3D6C);
  }
  if (channels == 4)
   snd_cmipci_set_bit(cm, CM_REG_CHFORMAT, CM_CHB3D);
  else
   snd_cmipci_clear_bit(cm, CM_REG_CHFORMAT, CM_CHB3D);
  spin_unlock_irq(&cm->reg_lock);
 }
 return 0;
}
