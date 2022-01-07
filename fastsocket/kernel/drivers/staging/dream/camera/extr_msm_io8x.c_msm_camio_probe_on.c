
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct msm_camera_sensor_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct msm_camera_sensor_info {struct msm_camera_device_platform_data* pdata; } ;
struct msm_camera_device_platform_data {int (* camera_gpio_on ) () ;} ;


 int CAMIO_VFE_MDC_CLK ;
 int msm_camio_clk_enable (int ) ;
 int stub1 () ;

int msm_camio_probe_on(struct platform_device *pdev)
{
 struct msm_camera_sensor_info *sinfo = pdev->dev.platform_data;
 struct msm_camera_device_platform_data *camdev = sinfo->pdata;

 camdev->camera_gpio_on();
 return msm_camio_clk_enable(CAMIO_VFE_MDC_CLK);
}
