
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


 int MAX9877_OSC_MASK ;
 int MAX9877_OSC_OFFSET ;
 size_t MAX9877_OUTPUT_MODE ;
 int* max9877_regs ;

__attribute__((used)) static int max9877_get_osc_mode(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 u8 value = (max9877_regs[MAX9877_OUTPUT_MODE] & MAX9877_OSC_MASK);

 value = value >> MAX9877_OSC_OFFSET;

 ucontrol->value.integer.value[0] = value;
 return 0;
}
