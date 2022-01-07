
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct snd_kcontrol {int private_value; struct oxygen* private_data; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int (* ac97_switch ) (struct oxygen*,unsigned int,int) ;} ;
struct oxygen {int mutex; TYPE_3__ model; } ;


 unsigned int AC97_AUX ;
 unsigned int AC97_CD ;
 unsigned int AC97_LINE ;
 unsigned int AC97_MIC ;
 unsigned int AC97_VIDEO ;
 int CM9780_GPIO_STATUS ;
 int CM9780_GPO0 ;
 int CONTROL_AUX_CAPTURE_SWITCH ;
 int CONTROL_CD_CAPTURE_SWITCH ;
 int CONTROL_LINE_CAPTURE_SWITCH ;
 int CONTROL_MIC_CAPTURE_SWITCH ;
 int mute_ac97_ctl (struct oxygen*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_read_ac97 (struct oxygen*,unsigned int,unsigned int) ;
 int oxygen_write_ac97 (struct oxygen*,unsigned int,unsigned int,int) ;
 int oxygen_write_ac97_masked (struct oxygen*,int ,int ,int ,int ) ;
 int stub1 (struct oxygen*,unsigned int,int) ;

__attribute__((used)) static int ac97_switch_put(struct snd_kcontrol *ctl,
      struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 unsigned int codec = (ctl->private_value >> 24) & 1;
 unsigned int index = ctl->private_value & 0xff;
 unsigned int bitnr = (ctl->private_value >> 8) & 0xff;
 int invert = ctl->private_value & (1 << 16);
 u16 oldreg, newreg;
 int change;

 mutex_lock(&chip->mutex);
 oldreg = oxygen_read_ac97(chip, codec, index);
 newreg = oldreg;
 if (!value->value.integer.value[0] ^ !invert)
  newreg |= 1 << bitnr;
 else
  newreg &= ~(1 << bitnr);
 change = newreg != oldreg;
 if (change) {
  oxygen_write_ac97(chip, codec, index, newreg);
  if (codec == 0 && chip->model.ac97_switch)
   chip->model.ac97_switch(chip, index, newreg & 0x8000);
  if (index == AC97_LINE) {
   oxygen_write_ac97_masked(chip, 0, CM9780_GPIO_STATUS,
       newreg & 0x8000 ?
       CM9780_GPO0 : 0, CM9780_GPO0);
   if (!(newreg & 0x8000)) {
    mute_ac97_ctl(chip, CONTROL_MIC_CAPTURE_SWITCH);
    mute_ac97_ctl(chip, CONTROL_CD_CAPTURE_SWITCH);
    mute_ac97_ctl(chip, CONTROL_AUX_CAPTURE_SWITCH);
   }
  } else if ((index == AC97_MIC || index == AC97_CD ||
       index == AC97_VIDEO || index == AC97_AUX) &&
      bitnr == 15 && !(newreg & 0x8000)) {
   mute_ac97_ctl(chip, CONTROL_LINE_CAPTURE_SWITCH);
   oxygen_write_ac97_masked(chip, 0, CM9780_GPIO_STATUS,
       CM9780_GPO0, CM9780_GPO0);
  }
 }
 mutex_unlock(&chip->mutex);
 return change;
}
