
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int CONTROL_FLAG_ADC_C_HIGH_PASS ;
 int CONTROL_FLAG_IDLE_ENABLE ;
 int CONTROL_FLAG_PORT_A_10KOHM_LOAD ;
 int CONTROL_FLAG_PORT_A_COMMON_MODE ;
 int CONTROL_FLAG_PORT_D_10KOHM_LOAD ;
 int CONTROL_FLAG_PORT_D_COMMON_MODE ;
 int chipio_set_control_flag (struct hda_codec*,int ,int) ;

__attribute__((used)) static void ca0132_init_flags(struct hda_codec *codec)
{
 chipio_set_control_flag(codec, CONTROL_FLAG_IDLE_ENABLE, 0);
 chipio_set_control_flag(codec, CONTROL_FLAG_PORT_A_COMMON_MODE, 0);
 chipio_set_control_flag(codec, CONTROL_FLAG_PORT_D_COMMON_MODE, 0);
 chipio_set_control_flag(codec, CONTROL_FLAG_PORT_A_10KOHM_LOAD, 0);
 chipio_set_control_flag(codec, CONTROL_FLAG_PORT_D_10KOHM_LOAD, 0);
 chipio_set_control_flag(codec, CONTROL_FLAG_ADC_C_HIGH_PASS, 1);
}
