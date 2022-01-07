
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct msm_camera_sensor_info* platform_data; } ;
struct platform_device {int name; TYPE_1__ dev; } ;
struct msm_camera_sensor_info {struct msm_camera_device_platform_data* pdata; } ;
struct TYPE_4__ {int appsz; int appphy; int mdcsz; int mdcphy; } ;
struct msm_camera_device_platform_data {int (* camera_gpio_on ) () ;TYPE_2__ ioext; } ;


 int CAMIO_MDC_CLK ;
 int CAMIO_VFE_CLK ;
 int CAMIO_VFE_MDC_CLK ;
 int EBUSY ;
 int ENOMEM ;
 void* appbase ;
 void* appio ;
 TYPE_2__ camio_ext ;
 void* ioremap (int ,int ) ;
 int iounmap (void*) ;
 void* mdcbase ;
 void* mdcio ;
 int msm_camio_clk_enable (int ) ;
 int release_mem_region (int ,int ) ;
 void* request_mem_region (int ,int ,int ) ;
 int stub1 () ;

int msm_camio_enable(struct platform_device *pdev)
{
 int rc = 0;
 struct msm_camera_sensor_info *sinfo = pdev->dev.platform_data;
 struct msm_camera_device_platform_data *camdev = sinfo->pdata;

 camio_ext = camdev->ioext;

 appio = request_mem_region(camio_ext.appphy,
  camio_ext.appsz, pdev->name);
 if (!appio) {
  rc = -EBUSY;
  goto enable_fail;
 }

 appbase = ioremap(camio_ext.appphy,
  camio_ext.appsz);
 if (!appbase) {
  rc = -ENOMEM;
  goto apps_no_mem;
 }

 mdcio = request_mem_region(camio_ext.mdcphy,
  camio_ext.mdcsz, pdev->name);
 if (!mdcio) {
  rc = -EBUSY;
  goto mdc_busy;
 }

 mdcbase = ioremap(camio_ext.mdcphy,
  camio_ext.mdcsz);
 if (!mdcbase) {
  rc = -ENOMEM;
  goto mdc_no_mem;
 }

 camdev->camera_gpio_on();

 msm_camio_clk_enable(CAMIO_VFE_CLK);
 msm_camio_clk_enable(CAMIO_MDC_CLK);
 msm_camio_clk_enable(CAMIO_VFE_MDC_CLK);
 return 0;

mdc_no_mem:
 release_mem_region(camio_ext.mdcphy, camio_ext.mdcsz);
mdc_busy:
 iounmap(appbase);
apps_no_mem:
 release_mem_region(camio_ext.appphy, camio_ext.appsz);
enable_fail:
 return rc;
}
