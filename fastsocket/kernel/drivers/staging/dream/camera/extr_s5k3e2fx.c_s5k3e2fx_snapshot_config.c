
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {int sensormode; int pict_res; int curr_res; } ;


 int S_RES_CAPTURE ;
 int S_UPDATE_PERIODIC ;
 TYPE_1__* s5k3e2fx_ctrl ;
 scalar_t__ s5k3e2fx_setting (int ,int ) ;

__attribute__((used)) static int32_t s5k3e2fx_snapshot_config(int mode)
{
 int32_t rc = 0;

 rc = s5k3e2fx_setting(S_UPDATE_PERIODIC, S_RES_CAPTURE);
 if (rc < 0)
  return rc;

 s5k3e2fx_ctrl->curr_res = s5k3e2fx_ctrl->pict_res;
 s5k3e2fx_ctrl->sensormode = mode;

 return rc;
}
