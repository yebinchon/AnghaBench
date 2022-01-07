
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct msm_vfe_callback {int dummy; } ;


 int msm_camio_enable (struct platform_device*) ;
 int vfe_cmd_init (struct msm_vfe_callback*,struct platform_device*,int ) ;
 int vfe_syncdata ;

__attribute__((used)) static int vfe_init(struct msm_vfe_callback *presp,
 struct platform_device *dev)
{
 int rc = 0;

 rc = vfe_cmd_init(presp, dev, vfe_syncdata);
 if (rc < 0)
  return rc;


 return msm_camio_enable(dev);
}
