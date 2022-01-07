
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {TYPE_2__* ops; TYPE_1__* hw; } ;
struct TYPE_4__ {int (* akm_write ) (struct vx_core*,int ,int) ;} ;
struct TYPE_3__ {int output_level_max; } ;


 int XX_CODEC_LEVEL_LEFT_REGISTER ;
 int XX_CODEC_LEVEL_RIGHT_REGISTER ;
 int stub1 (struct vx_core*,int ,int) ;
 int stub2 (struct vx_core*,int ,int) ;
 int vx_set_codec_reg (struct vx_core*,int,int ,int) ;

__attribute__((used)) static void vx_set_analog_output_level(struct vx_core *chip, int codec, int left, int right)
{
 left = chip->hw->output_level_max - left;
 right = chip->hw->output_level_max - right;

 if (chip->ops->akm_write) {
  chip->ops->akm_write(chip, XX_CODEC_LEVEL_LEFT_REGISTER, left);
  chip->ops->akm_write(chip, XX_CODEC_LEVEL_RIGHT_REGISTER, right);
 } else {

  vx_set_codec_reg(chip, codec, XX_CODEC_LEVEL_LEFT_REGISTER, left);
  vx_set_codec_reg(chip, codec, XX_CODEC_LEVEL_RIGHT_REGISTER, right);
 }
}
