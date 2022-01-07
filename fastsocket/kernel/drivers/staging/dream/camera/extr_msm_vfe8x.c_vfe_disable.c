
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct camera_enable_cmd {int dummy; } ;


 int msm_camio_disable (struct platform_device*) ;
 int vfe_stop () ;

__attribute__((used)) static int vfe_disable(struct camera_enable_cmd *enable,
 struct platform_device *dev)
{
 int rc = 0;

 vfe_stop();

 msm_camio_disable(dev);
 return rc;
}
