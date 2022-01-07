
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int msm_camio_disable (struct platform_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfe_cmd_release (struct platform_device*) ;
 int vfe_lock ;
 int * vfe_syncdata ;

__attribute__((used)) static void vfe_release(struct platform_device *dev)
{
 msm_camio_disable(dev);
 vfe_cmd_release(dev);

 mutex_lock(&vfe_lock);
 vfe_syncdata = ((void*)0);
 mutex_unlock(&vfe_lock);
}
