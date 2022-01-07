
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int CONTROL_PARAM_PORTA_160OHM_GAIN ;
 int CONTROL_PARAM_PORTD_160OHM_GAIN ;
 int chipio_set_control_param (struct hda_codec*,int ,int) ;

__attribute__((used)) static void ca0132_init_params(struct hda_codec *codec)
{
 chipio_set_control_param(codec, CONTROL_PARAM_PORTA_160OHM_GAIN, 6);
 chipio_set_control_param(codec, CONTROL_PARAM_PORTD_160OHM_GAIN, 6);
}
