
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct msm_camera_sensor_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct msm_camera_sensor_info {struct msm_camera_device_platform_data* pdata; } ;
struct msm_camera_device_platform_data {int (* camera_gpio_off ) () ;} ;
struct TYPE_4__ {int appsz; int appphy; int mdcsz; int mdcphy; } ;


 int CAMIO_MDC_CLK ;
 int CAMIO_VFE_AXI_CLK ;
 int CAMIO_VFE_CLK ;
 int CAMIO_VFE_MDC_CLK ;
 int appbase ;
 TYPE_2__ camio_ext ;
 int iounmap (int ) ;
 int mdcbase ;
 int msm_camio_clk_disable (int ) ;
 int release_mem_region (int ,int ) ;
 int stub1 () ;

void msm_camio_disable(struct platform_device *pdev)
{
 struct msm_camera_sensor_info *sinfo = pdev->dev.platform_data;
 struct msm_camera_device_platform_data *camdev = sinfo->pdata;

 iounmap(mdcbase);
 release_mem_region(camio_ext.mdcphy, camio_ext.mdcsz);
 iounmap(appbase);
 release_mem_region(camio_ext.appphy, camio_ext.appsz);

 camdev->camera_gpio_off();

 msm_camio_clk_disable(CAMIO_VFE_MDC_CLK);
 msm_camio_clk_disable(CAMIO_MDC_CLK);
 msm_camio_clk_disable(CAMIO_VFE_CLK);
 msm_camio_clk_disable(CAMIO_VFE_AXI_CLK);
}
