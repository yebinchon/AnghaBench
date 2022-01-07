
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_2__ {scalar_t__ init_curr_lens_pos; scalar_t__ curr_lens_pos; } ;


 int MT9P012_AF_I2C_ADDR ;
 TYPE_1__* mt9p012_ctrl ;
 int mt9p012_i2c_write_b (int,int,int) ;

__attribute__((used)) static int32_t mt9p012_set_default_focus(void)
{
 int32_t rc = 0;
 uint8_t code_val_msb, code_val_lsb;

 code_val_msb = 0x00;
 code_val_lsb = 0x00;


 rc = mt9p012_i2c_write_b(MT9P012_AF_I2C_ADDR >> 1,
  code_val_msb, code_val_lsb);

 mt9p012_ctrl->curr_lens_pos = 0;
 mt9p012_ctrl->init_curr_lens_pos = 0;

 return rc;
}
