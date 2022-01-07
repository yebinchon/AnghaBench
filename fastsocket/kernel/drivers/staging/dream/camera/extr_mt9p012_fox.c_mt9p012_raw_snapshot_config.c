
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {int sensormode; int pict_res; int curr_res; } ;


 int RES_CAPTURE ;
 int UPDATE_PERIODIC ;
 TYPE_1__* mt9p012_ctrl ;
 scalar_t__ mt9p012_setting (int ,int ) ;

__attribute__((used)) static int32_t mt9p012_raw_snapshot_config(int mode)
{
 int32_t rc = 0;

 rc = mt9p012_setting(UPDATE_PERIODIC, RES_CAPTURE);
 if (rc < 0)
  return rc;

 mt9p012_ctrl->curr_res = mt9p012_ctrl->pict_res;

 mt9p012_ctrl->sensormode = mode;

 return rc;
}
