
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int ) ;
 int mt9d112_ctrl ;

int mt9d112_sensor_release(void)
{
 int rc = 0;



 kfree(mt9d112_ctrl);


 return rc;
}
