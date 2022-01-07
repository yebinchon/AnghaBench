
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int msm_camera_drv_start (struct platform_device*,int ) ;
 int mt9p012_sensor_probe ;

__attribute__((used)) static int __mt9p012_probe(struct platform_device *pdev)
{
 return msm_camera_drv_start(pdev, mt9p012_sensor_probe);
}
