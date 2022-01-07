
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {scalar_t__ type; scalar_t__** output_level; TYPE_2__* hw; TYPE_1__* ops; } ;
struct TYPE_4__ {unsigned int num_codecs; } ;
struct TYPE_3__ {int akm_write; int (* reset_codec ) (struct vx_core*) ;} ;


 int DAC_ATTEN_MAX ;
 scalar_t__ VX_TYPE_VXPOCKET ;
 int XX_CODEC_ADC_CONTROL_REGISTER ;
 int XX_CODEC_CLOCK_CONTROL_REGISTER ;
 int XX_CODEC_DAC_CONTROL_REGISTER ;
 int XX_CODEC_PORT_MODE_REGISTER ;
 int stub1 (struct vx_core*) ;
 int vx_set_analog_output_level (struct vx_core*,unsigned int,int ,int ) ;
 int vx_set_codec_reg (struct vx_core*,unsigned int,int ,int) ;

void vx_reset_codec(struct vx_core *chip, int cold_reset)
{
 unsigned int i;
 int port = chip->type >= VX_TYPE_VXPOCKET ? 0x75 : 0x65;

 chip->ops->reset_codec(chip);


 if (! chip->ops->akm_write) {

  for (i = 0; i < chip->hw->num_codecs; i++) {

   vx_set_codec_reg(chip, i, XX_CODEC_DAC_CONTROL_REGISTER, DAC_ATTEN_MAX);

   vx_set_codec_reg(chip, i, XX_CODEC_ADC_CONTROL_REGISTER, 0x00);

   vx_set_codec_reg(chip, i, XX_CODEC_PORT_MODE_REGISTER, port);

   vx_set_codec_reg(chip, i, XX_CODEC_CLOCK_CONTROL_REGISTER, 0x00);
  }
 }


 for (i = 0; i < chip->hw->num_codecs; i++) {
  chip->output_level[i][0] = 0;
  chip->output_level[i][1] = 0;
  vx_set_analog_output_level(chip, i, 0, 0);
 }
}
