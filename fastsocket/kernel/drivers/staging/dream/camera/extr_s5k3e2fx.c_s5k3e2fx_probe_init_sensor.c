
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct msm_camera_sensor_info {int sensor_reset; } ;
typedef int int32_t ;
struct TYPE_2__ {int addr; } ;


 int CDBG (char*,...) ;
 int ENODEV ;
 scalar_t__ S5K3E2FX_MODEL_ID ;
 int S5K3E2FX_REG_MODEL_ID ;
 int gpio_direction_output (int ,int) ;
 int gpio_request (int ,char*) ;
 int mdelay (int) ;
 TYPE_1__* s5k3e2fx_client ;
 int s5k3e2fx_i2c_read_w (int ,int ,scalar_t__*) ;
 int s5k3e2fx_probe_init_done (struct msm_camera_sensor_info const*) ;

__attribute__((used)) static int s5k3e2fx_probe_init_sensor(const struct msm_camera_sensor_info *data)
{
 int32_t rc;
 uint16_t chipid = 0;

 rc = gpio_request(data->sensor_reset, "s5k3e2fx");
 if (!rc)
  gpio_direction_output(data->sensor_reset, 1);
 else
  goto init_probe_done;

 mdelay(20);

 CDBG("s5k3e2fx_sensor_init(): reseting sensor.\n");

 rc = s5k3e2fx_i2c_read_w(s5k3e2fx_client->addr,
  S5K3E2FX_REG_MODEL_ID, &chipid);
 if (rc < 0)
  goto init_probe_fail;

 if (chipid != S5K3E2FX_MODEL_ID) {
  CDBG("S5K3E2FX wrong model_id = 0x%x\n", chipid);
  rc = -ENODEV;
  goto init_probe_fail;
 }

 goto init_probe_done;

init_probe_fail:
 s5k3e2fx_probe_init_done(data);
init_probe_done:
 return rc;
}
