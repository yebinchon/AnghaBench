
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mt9d112_ctrl {int dummy; } ;
struct msm_camera_sensor_info {int dummy; } ;
struct TYPE_4__ {struct msm_camera_sensor_info const* sensordata; } ;


 int CDBG (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mdelay (int) ;
 int msm_camio_camif_pad_reg_reset () ;
 int msm_camio_clk_rate_set (int) ;
 TYPE_1__* mt9d112_ctrl ;
 int mt9d112_sensor_init_probe (struct msm_camera_sensor_info const*) ;

int mt9d112_sensor_init(const struct msm_camera_sensor_info *data)
{
 int rc = 0;

 mt9d112_ctrl = kzalloc(sizeof(struct mt9d112_ctrl), GFP_KERNEL);
 if (!mt9d112_ctrl) {
  CDBG("mt9d112_init failed!\n");
  rc = -ENOMEM;
  goto init_done;
 }

 if (data)
  mt9d112_ctrl->sensordata = data;


 msm_camio_clk_rate_set(24000000);
 mdelay(5);

 msm_camio_camif_pad_reg_reset();

 rc = mt9d112_sensor_init_probe(data);
 if (rc < 0) {
  CDBG("mt9d112_sensor_init failed!\n");
  goto init_fail;
 }

init_done:
 return rc;

init_fail:
 kfree(mt9d112_ctrl);
 return rc;
}
