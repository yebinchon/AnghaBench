
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ EINVAL ;
 int GROUPED_PARAMETER_HOLD ;
 int GROUPED_PARAMETER_UPDATE ;
 int REG_GROUPED_PARAMETER_HOLD ;



 TYPE_1__* mt9t013_client ;
 scalar_t__ mt9t013_i2c_write_w (int ,int ,int ) ;
 scalar_t__ mt9t013_raw_snapshot_config (int) ;
 scalar_t__ mt9t013_snapshot_config (int) ;
 scalar_t__ mt9t013_video_config (int,int) ;

__attribute__((used)) static int32_t mt9t013_set_sensor_mode(int mode, int res)
{
 int32_t rc = 0;
 rc = mt9t013_i2c_write_w(mt9t013_client->addr,
   REG_GROUPED_PARAMETER_HOLD,
   GROUPED_PARAMETER_HOLD);
 if (rc < 0)
  return rc;

 switch (mode) {
 case 130:
  rc = mt9t013_video_config(mode, res);
  break;

 case 128:
  rc = mt9t013_snapshot_config(mode);
  break;

 case 129:
  rc = mt9t013_raw_snapshot_config(mode);
  break;

 default:
  return -EINVAL;
 }


 if (rc >= 0)
  return mt9t013_i2c_write_w(mt9t013_client->addr,
    REG_GROUPED_PARAMETER_HOLD,
    GROUPED_PARAMETER_UPDATE);
 return rc;
}
