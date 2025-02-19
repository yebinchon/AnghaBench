
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int EINVAL ;



 int mt9p012_raw_snapshot_config (int) ;
 int mt9p012_snapshot_config (int) ;
 int mt9p012_video_config (int,int) ;

__attribute__((used)) static int32_t mt9p012_set_sensor_mode(int mode, int res)
{
 int32_t rc = 0;

 switch (mode) {
 case 130:
  rc = mt9p012_video_config(mode, res);
  break;

 case 128:
  rc = mt9p012_snapshot_config(mode);
  break;

 case 129:
  rc = mt9p012_raw_snapshot_config(mode);
  break;

 default:
  rc = -EINVAL;
  break;
 }

 return rc;
}
