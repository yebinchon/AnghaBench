
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sensordata; } ;
struct TYPE_3__ {int vcm_pwd; } ;


 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 TYPE_2__* mt9t013_ctrl ;

__attribute__((used)) static void mt9t013_poweroff_af(void)
{
 gpio_direction_output(mt9t013_ctrl->sensordata->vcm_pwd, 1);
 gpio_free(mt9t013_ctrl->sensordata->vcm_pwd);
}
