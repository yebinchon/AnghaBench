
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_camera_sensor_info {int sensor_reset; } ;


 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int mdelay (int) ;

__attribute__((used)) static int mt9d112_reset(const struct msm_camera_sensor_info *dev)
{
 int rc = 0;

 rc = gpio_request(dev->sensor_reset, "mt9d112");

 if (!rc) {
  rc = gpio_direction_output(dev->sensor_reset, 0);
  mdelay(20);
  rc = gpio_direction_output(dev->sensor_reset, 1);
 }

 gpio_free(dev->sensor_reset);
 return rc;
}
