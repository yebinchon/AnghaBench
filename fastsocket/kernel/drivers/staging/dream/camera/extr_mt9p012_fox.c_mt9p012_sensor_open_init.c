
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mt9p012_ctrl {int dummy; } ;
struct msm_camera_sensor_info {int vcm_pwd; } ;
typedef int int32_t ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int fps_divider; int pict_fps_divider; scalar_t__ prev_res; struct msm_camera_sensor_info const* sensordata; int pict_res; int set_test; } ;


 int CDBG (char*,...) ;
 int ENOMEM ;
 int FULL_SIZE ;
 int GFP_KERNEL ;
 int MT9P012_DEFAULT_CLOCK_RATE ;
 int MT9P012_REG_RESET_REGISTER ;
 int MT9P012_RESET_REGISTER_PWON ;
 scalar_t__ QTR_SIZE ;
 int REG_INIT ;
 int RES_CAPTURE ;
 int RES_PREVIEW ;
 int TEST_OFF ;
 int gpio_direction_output (int ,int) ;
 int gpio_request (int ,char*) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mdelay (int) ;
 int msm_camio_camif_pad_reg_reset () ;
 int msm_camio_clk_rate_set (int ) ;
 TYPE_2__* mt9p012_client ;
 TYPE_1__* mt9p012_ctrl ;
 int mt9p012_i2c_write_w (int ,int ,int ) ;
 int mt9p012_probe_init_done (struct msm_camera_sensor_info const*) ;
 int mt9p012_probe_init_sensor (struct msm_camera_sensor_info const*) ;
 int mt9p012_set_default_focus () ;
 int mt9p012_setting (int ,int ) ;

__attribute__((used)) static int mt9p012_sensor_open_init(const struct msm_camera_sensor_info *data)
{
 int32_t rc;

 mt9p012_ctrl = kzalloc(sizeof(struct mt9p012_ctrl), GFP_KERNEL);
 if (!mt9p012_ctrl) {
  CDBG("mt9p012_init failed!\n");
  rc = -ENOMEM;
  goto init_done;
 }

 mt9p012_ctrl->fps_divider = 1 * 0x00000400;
 mt9p012_ctrl->pict_fps_divider = 1 * 0x00000400;
 mt9p012_ctrl->set_test = TEST_OFF;
 mt9p012_ctrl->prev_res = QTR_SIZE;
 mt9p012_ctrl->pict_res = FULL_SIZE;

 if (data)
  mt9p012_ctrl->sensordata = data;


 msm_camio_clk_rate_set(MT9P012_DEFAULT_CLOCK_RATE);
 mdelay(20);

 msm_camio_camif_pad_reg_reset();
 mdelay(20);

 rc = mt9p012_probe_init_sensor(data);
 if (rc < 0)
  goto init_fail1;

 if (mt9p012_ctrl->prev_res == QTR_SIZE)
  rc = mt9p012_setting(REG_INIT, RES_PREVIEW);
 else
  rc = mt9p012_setting(REG_INIT, RES_CAPTURE);

 if (rc < 0) {
  CDBG("mt9p012_setting failed. rc = %d\n", rc);
  goto init_fail1;
 }


 CDBG("mt9p012_sensor_open_init(): enabling output.\n");
 rc = mt9p012_i2c_write_w(mt9p012_client->addr,
  MT9P012_REG_RESET_REGISTER, MT9P012_RESET_REGISTER_PWON);
 if (rc < 0) {
  CDBG("sensor output enable failed. rc = %d\n", rc);
  goto init_fail1;
 }
 if (rc >= 0)
  goto init_done;




init_fail1:
 mt9p012_probe_init_done(data);
 kfree(mt9p012_ctrl);
init_done:
 return rc;
}
