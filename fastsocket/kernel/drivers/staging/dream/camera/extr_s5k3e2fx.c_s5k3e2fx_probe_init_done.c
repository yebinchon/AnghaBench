
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_camera_sensor_info {int sensor_reset; } ;


 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;

__attribute__((used)) static int s5k3e2fx_probe_init_done(const struct msm_camera_sensor_info *data)
{
 gpio_direction_output(data->sensor_reset, 0);
 gpio_free(data->sensor_reset);
 return 0;
}
