
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_v4l2_driver {int * sync; } ;



int msm_v4l2_unregister(struct msm_v4l2_driver *drv)
{
 drv->sync = ((void*)0);
 return 0;
}
