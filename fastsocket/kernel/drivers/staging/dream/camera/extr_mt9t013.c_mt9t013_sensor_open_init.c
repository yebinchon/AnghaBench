
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mt9t013_ctrl {int dummy; } ;
struct msm_camera_sensor_info {int dummy; } ;
typedef int int32_t ;
struct TYPE_4__ {int fps_divider; int pict_fps_divider; scalar_t__ prev_res; struct msm_camera_sensor_info const* sensordata; int pict_res; int set_test; } ;


 int ENOMEM ;
 int FULL_SIZE ;
 int GFP_KERNEL ;
 int MT9T013_DEFAULT_CLOCK_RATE ;
 scalar_t__ QTR_SIZE ;
 int REG_INIT ;
 int RES_CAPTURE ;
 int RES_PREVIEW ;
 int TEST_OFF ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mdelay (int) ;
 int msm_camio_camif_pad_reg_reset () ;
 int msm_camio_clk_rate_set (int ) ;
 TYPE_1__* mt9t013_ctrl ;
 int mt9t013_poweron_af () ;
 int mt9t013_probe_init_sensor (struct msm_camera_sensor_info const*) ;
 int mt9t013_setting (int ,int ) ;
 int pr_err (char*) ;

int mt9t013_sensor_open_init(const struct msm_camera_sensor_info *data)
{
 int32_t rc;

 mt9t013_ctrl = kzalloc(sizeof(struct mt9t013_ctrl), GFP_KERNEL);
 if (!mt9t013_ctrl) {
  pr_err("mt9t013_init failed!\n");
  rc = -ENOMEM;
  goto init_done;
 }

 mt9t013_ctrl->fps_divider = 1 * 0x00000400;
 mt9t013_ctrl->pict_fps_divider = 1 * 0x00000400;
 mt9t013_ctrl->set_test = TEST_OFF;
 mt9t013_ctrl->prev_res = QTR_SIZE;
 mt9t013_ctrl->pict_res = FULL_SIZE;

 if (data)
  mt9t013_ctrl->sensordata = data;


 msm_camio_clk_rate_set(MT9T013_DEFAULT_CLOCK_RATE);
 mdelay(20);

 msm_camio_camif_pad_reg_reset();
 mdelay(20);

 rc = mt9t013_probe_init_sensor(data);
 if (rc < 0)
  goto init_fail;

 if (mt9t013_ctrl->prev_res == QTR_SIZE)
  rc = mt9t013_setting(REG_INIT, RES_PREVIEW);
 else
  rc = mt9t013_setting(REG_INIT, RES_CAPTURE);

 if (rc >= 0)
  rc = mt9t013_poweron_af();

 if (rc < 0)
  goto init_fail;
 else
  goto init_done;

init_fail:
 kfree(mt9t013_ctrl);
init_done:
 return rc;
}
