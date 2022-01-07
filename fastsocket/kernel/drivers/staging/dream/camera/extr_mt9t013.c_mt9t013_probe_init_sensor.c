
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct msm_camera_sensor_info {int sensor_reset; } ;
struct TYPE_2__ {int addr; } ;


 int CDBG (char*,scalar_t__) ;
 int ENODEV ;
 scalar_t__ MT9T013_MODEL_ID ;
 int MT9T013_REG_MODEL_ID ;
 int MT9T013_REG_RESET_REGISTER ;
 int MT9T013_RESET_DELAY_MSECS ;
 int MT9T013_RESET_REGISTER_PWON ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int mdelay (int) ;
 TYPE_1__* mt9t013_client ;
 int mt9t013_i2c_read_w (int ,int ,scalar_t__*) ;
 int mt9t013_i2c_write_w (int ,int,int) ;
 int mt9t013_set_default_focus (int ) ;

__attribute__((used)) static int mt9t013_probe_init_sensor(const struct msm_camera_sensor_info *data)
{
 int rc;
 uint16_t chipid;

 rc = gpio_request(data->sensor_reset, "mt9t013");
 if (!rc)
  gpio_direction_output(data->sensor_reset, 1);
 else
  goto init_probe_done;

 mdelay(20);


 rc = mt9t013_i2c_write_w(mt9t013_client->addr,
  MT9T013_REG_RESET_REGISTER, 0x1009);
 if (rc < 0)
  goto init_probe_fail;


 rc = mt9t013_i2c_read_w(mt9t013_client->addr,
  MT9T013_REG_MODEL_ID, &chipid);

 if (rc < 0)
  goto init_probe_fail;

 CDBG("mt9t013 model_id = 0x%x\n", chipid);


 if (chipid != MT9T013_MODEL_ID) {
  rc = -ENODEV;
  goto init_probe_fail;
 }

 rc = mt9t013_i2c_write_w(mt9t013_client->addr,
  0x3064, 0x0805);
 if (rc < 0)
  goto init_probe_fail;

 mdelay(MT9T013_RESET_DELAY_MSECS);

 goto init_probe_done;
init_probe_fail:
 gpio_direction_output(data->sensor_reset, 0);
 gpio_free(data->sensor_reset);
init_probe_done:
 return rc;
}
