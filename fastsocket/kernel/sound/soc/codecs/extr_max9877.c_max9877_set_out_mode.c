
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int MAX9877_OUTMODE_MASK ;
 size_t MAX9877_OUTPUT_MODE ;
 int* max9877_regs ;
 int max9877_write_regs () ;

__attribute__((used)) static int max9877_set_out_mode(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 u8 value = ucontrol->value.integer.value[0];

 value += 1;

 if ((max9877_regs[MAX9877_OUTPUT_MODE] & MAX9877_OUTMODE_MASK) == value)
  return 0;

 max9877_regs[MAX9877_OUTPUT_MODE] &= ~MAX9877_OUTMODE_MASK;
 max9877_regs[MAX9877_OUTPUT_MODE] |= value;
 max9877_write_regs();
 return 1;
}
