
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sensordata; } ;
struct TYPE_4__ {int vcm_pwd; int sensor_reset; } ;


 int CDBG (char*) ;
 int EBADF ;
 int down (int *) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* mt9p012_ctrl ;
 int mt9p012_power_down () ;
 int mt9p012_sem ;
 int up (int *) ;

int mt9p012_sensor_release(void)
{
 int rc = -EBADF;

 down(&mt9p012_sem);

 mt9p012_power_down();

 gpio_direction_output(mt9p012_ctrl->sensordata->sensor_reset,
  0);
 gpio_free(mt9p012_ctrl->sensordata->sensor_reset);

 gpio_direction_output(mt9p012_ctrl->sensordata->vcm_pwd, 0);
 gpio_free(mt9p012_ctrl->sensordata->vcm_pwd);

 kfree(mt9p012_ctrl);
 mt9p012_ctrl = ((void*)0);

 CDBG("mt9p012_release completed\n");

 up(&mt9p012_sem);
 return rc;
}
