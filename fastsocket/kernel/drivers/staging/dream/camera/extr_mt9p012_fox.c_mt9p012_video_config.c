
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {int prev_res; int curr_res; int sensormode; int my_reg_line_count; int my_reg_gain; } ;


 int CDBG (char*) ;

 int MT9P012_REG_RESET_REGISTER ;

 int RES_CAPTURE ;
 int RES_PREVIEW ;
 int UPDATE_PERIODIC ;
 TYPE_2__* mt9p012_client ;
 TYPE_1__* mt9p012_ctrl ;
 int mt9p012_i2c_write_w (int ,int ,int) ;
 int mt9p012_setting (int ,int ) ;
 int mt9p012_write_exp_gain (int ,int ) ;

__attribute__((used)) static int32_t mt9p012_video_config(int mode, int res)
{
 int32_t rc;

 switch (res) {
 case 128:
  rc = mt9p012_setting(UPDATE_PERIODIC, RES_PREVIEW);
  if (rc < 0)
   return rc;

  CDBG("mt9p012 sensor configuration done!\n");
  break;

 case 129:
  rc =
  mt9p012_setting(UPDATE_PERIODIC, RES_CAPTURE);
  if (rc < 0)
   return rc;

  break;

 default:
  return 0;
 }

 mt9p012_ctrl->prev_res = res;
 mt9p012_ctrl->curr_res = res;
 mt9p012_ctrl->sensormode = mode;

 rc =
  mt9p012_write_exp_gain(mt9p012_ctrl->my_reg_gain,
   mt9p012_ctrl->my_reg_line_count);

 rc =
  mt9p012_i2c_write_w(mt9p012_client->addr,
   MT9P012_REG_RESET_REGISTER,
   0x10cc|0x0002);

 return rc;
}
