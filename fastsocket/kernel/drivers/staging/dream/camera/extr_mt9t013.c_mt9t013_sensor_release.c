
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sensordata; } ;
struct TYPE_4__ {int sensor_reset; } ;


 int CDBG (char*) ;
 int EBADF ;
 int down (int *) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* mt9t013_ctrl ;
 int mt9t013_power_down () ;
 int mt9t013_poweroff_af () ;
 int mt9t013_sem ;
 int up (int *) ;

int mt9t013_sensor_release(void)
{
 int rc = -EBADF;

 down(&mt9t013_sem);

 mt9t013_poweroff_af();
 mt9t013_power_down();

 gpio_direction_output(mt9t013_ctrl->sensordata->sensor_reset,
   0);
 gpio_free(mt9t013_ctrl->sensordata->sensor_reset);

 kfree(mt9t013_ctrl);

 up(&mt9t013_sem);
 CDBG("mt9t013_release completed!\n");
 return rc;
}
