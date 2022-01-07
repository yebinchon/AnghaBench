
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RPCROUTER_MAX_REMOTE_SERVERS ;
 int cdev_del (int *) ;
 int class_destroy (int ) ;
 int device_destroy (int ,int ) ;
 int msm_rpcrouter_class ;
 int msm_rpcrouter_devno ;
 int rpcrouter_cdev ;
 int unregister_chrdev_region (int ,scalar_t__) ;

void msm_rpcrouter_exit_devices(void)
{
 cdev_del(&rpcrouter_cdev);
 device_destroy(msm_rpcrouter_class, msm_rpcrouter_devno);
 unregister_chrdev_region(msm_rpcrouter_devno,
     RPCROUTER_MAX_REMOTE_SERVERS + 1);
 class_destroy(msm_rpcrouter_class);
}
