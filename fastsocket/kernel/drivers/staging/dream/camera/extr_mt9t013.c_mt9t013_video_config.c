
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_2__ {int prev_res; int curr_res; int sensormode; int my_reg_line_count; int my_reg_gain; } ;


 int CDBG (char*) ;
 int EINVAL ;


 int RES_CAPTURE ;
 int RES_PREVIEW ;
 int UPDATE_PERIODIC ;
 TYPE_1__* mt9t013_ctrl ;
 int mt9t013_setting (int ,int ) ;
 int mt9t013_write_exp_gain (int ,int ) ;

__attribute__((used)) static int32_t mt9t013_video_config(int mode, int res)
{
 int32_t rc;

 switch (res) {
 case 128:
  rc = mt9t013_setting(UPDATE_PERIODIC, RES_PREVIEW);
  if (rc < 0)
   return rc;
  CDBG("sensor configuration done!\n");
  break;

 case 129:
  rc = mt9t013_setting(UPDATE_PERIODIC, RES_CAPTURE);
  if (rc < 0)
   return rc;
  break;

 default:
  return -EINVAL;
 }

 mt9t013_ctrl->prev_res = res;
 mt9t013_ctrl->curr_res = res;
 mt9t013_ctrl->sensormode = mode;

 return mt9t013_write_exp_gain(mt9t013_ctrl->my_reg_gain,
   mt9t013_ctrl->my_reg_line_count);
}
