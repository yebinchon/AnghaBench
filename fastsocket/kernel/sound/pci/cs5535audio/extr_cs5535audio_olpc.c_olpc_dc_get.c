
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int GPIO_OUTPUT_VAL ;
 int OLPC_GPIO_MIC_AC ;
 int geode_gpio_isset (int ,int ) ;

__attribute__((used)) static int olpc_dc_get(struct snd_kcontrol *kctl, struct snd_ctl_elem_value *v)
{
 v->value.integer.value[0] = geode_gpio_isset(OLPC_GPIO_MIC_AC,
   GPIO_OUTPUT_VAL);
 return 0;
}
