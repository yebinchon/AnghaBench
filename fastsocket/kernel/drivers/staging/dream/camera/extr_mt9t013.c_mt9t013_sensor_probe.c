
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_sensor_ctrl {int s_config; int s_release; int s_init; } ;
struct msm_camera_sensor_info {int dummy; } ;


 int ENOTSUPP ;
 int MT9T013_DEFAULT_CLOCK_RATE ;
 int i2c_add_driver (int *) ;
 int i2c_del_driver (int *) ;
 int mdelay (int) ;
 int msm_camio_clk_rate_set (int ) ;
 int * mt9t013_client ;
 int mt9t013_i2c_driver ;
 int mt9t013_probe_init_sensor (struct msm_camera_sensor_info const*) ;
 int mt9t013_sensor_config ;
 int mt9t013_sensor_init_done (struct msm_camera_sensor_info const*) ;
 int mt9t013_sensor_open_init ;
 int mt9t013_sensor_release ;

__attribute__((used)) static int mt9t013_sensor_probe(
  const struct msm_camera_sensor_info *info,
  struct msm_sensor_ctrl *s)
{


 int rc = i2c_add_driver(&mt9t013_i2c_driver);
 if (rc < 0 || mt9t013_client == ((void*)0)) {
  rc = -ENOTSUPP;
  goto probe_done;
 }


 msm_camio_clk_rate_set(MT9T013_DEFAULT_CLOCK_RATE);
 mdelay(20);

 rc = mt9t013_probe_init_sensor(info);
 if (rc < 0) {
  i2c_del_driver(&mt9t013_i2c_driver);
  goto probe_done;
 }

 s->s_init = mt9t013_sensor_open_init;
 s->s_release = mt9t013_sensor_release;
 s->s_config = mt9t013_sensor_config;
 mt9t013_sensor_init_done(info);

probe_done:
 return rc;
}
