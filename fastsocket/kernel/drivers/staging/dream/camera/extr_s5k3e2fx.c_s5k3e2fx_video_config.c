
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_2__ {int prev_res; int curr_res; int sensormode; int my_reg_line_count; int my_reg_gain; } ;


 int CDBG (char*) ;


 int S_RES_CAPTURE ;
 int S_RES_PREVIEW ;
 int S_UPDATE_PERIODIC ;
 TYPE_1__* s5k3e2fx_ctrl ;
 int s5k3e2fx_setting (int ,int ) ;
 int s5k3e2fx_write_exp_gain (int ,int ) ;

__attribute__((used)) static int32_t s5k3e2fx_video_config(int mode, int res)
{
 int32_t rc;

 switch (res) {
 case 128:
  rc = s5k3e2fx_setting(S_UPDATE_PERIODIC, S_RES_PREVIEW);
  if (rc < 0)
   return rc;

  CDBG("s5k3e2fx sensor configuration done!\n");
  break;

 case 129:
  rc = s5k3e2fx_setting(S_UPDATE_PERIODIC, S_RES_CAPTURE);
  if (rc < 0)
   return rc;

  break;

 default:
  return 0;
 }

 s5k3e2fx_ctrl->prev_res = res;
 s5k3e2fx_ctrl->curr_res = res;
 s5k3e2fx_ctrl->sensormode = mode;

 rc =
  s5k3e2fx_write_exp_gain(s5k3e2fx_ctrl->my_reg_gain,
   s5k3e2fx_ctrl->my_reg_line_count);

 return rc;
}
