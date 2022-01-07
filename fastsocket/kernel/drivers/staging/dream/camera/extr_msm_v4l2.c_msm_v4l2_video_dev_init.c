
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int vfl_type; int minor; int * ioctl_ops; int release; int * fops; int name; } ;
struct TYPE_2__ {int drv; } ;


 int MSM_APPS_ID_V4L2 ;
 TYPE_1__* g_pmsm_v4l2_dev ;
 int msm_ioctl_ops ;
 int msm_v4l2_fops ;
 int msm_v4l2_register (int ) ;
 int msm_v4l2_release_dev ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int msm_v4l2_video_dev_init(struct video_device *pvd)
{
 strncpy(pvd->name, MSM_APPS_ID_V4L2, sizeof(pvd->name));
 pvd->vfl_type = 1;
 pvd->fops = &msm_v4l2_fops;
 pvd->release = msm_v4l2_release_dev;
 pvd->minor = -1;
 pvd->ioctl_ops = &msm_ioctl_ops;
 return msm_v4l2_register(g_pmsm_v4l2_dev->drv);
}
