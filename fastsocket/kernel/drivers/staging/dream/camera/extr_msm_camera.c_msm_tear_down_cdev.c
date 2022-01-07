
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_device {int cdev; } ;
typedef int dev_t ;


 int cdev_del (int *) ;
 int device_destroy (int ,int ) ;
 int msm_class ;

__attribute__((used)) static int msm_tear_down_cdev(struct msm_device *msm, dev_t devno)
{
 cdev_del(&msm->cdev);
 device_destroy(msm_class, devno);
 return 0;
}
