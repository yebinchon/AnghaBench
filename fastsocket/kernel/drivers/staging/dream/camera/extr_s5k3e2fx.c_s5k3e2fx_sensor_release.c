
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
 TYPE_2__* s5k3e2fx_ctrl ;
 int s5k3e2fx_power_down () ;
 int s5k3e2fx_sem ;
 int up (int *) ;

__attribute__((used)) static int s5k3e2fx_sensor_release(void)
{
 int rc = -EBADF;

 down(&s5k3e2fx_sem);

 s5k3e2fx_power_down();

 gpio_direction_output(s5k3e2fx_ctrl->sensordata->sensor_reset,
  0);
 gpio_free(s5k3e2fx_ctrl->sensordata->sensor_reset);

 kfree(s5k3e2fx_ctrl);
 s5k3e2fx_ctrl = ((void*)0);

 CDBG("s5k3e2fx_release completed\n");

 up(&s5k3e2fx_sem);
 return rc;
}
