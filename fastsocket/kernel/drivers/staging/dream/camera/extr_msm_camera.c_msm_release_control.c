
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_device {int * sync; } ;
struct msm_control_device {int ctrl_q; struct msm_device* pmsm; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; struct msm_control_device* private_data; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;


 int MSM_DRAIN_QUEUE (int *,int ) ;
 int __msm_release (int *) ;
 int ctrl_status_q ;
 int kfree (struct msm_control_device*) ;
 int pict_frame_q ;
 int printk (char*,int ) ;

__attribute__((used)) static int msm_release_control(struct inode *node, struct file *filep)
{
 int rc;
 struct msm_control_device *ctrl_pmsm = filep->private_data;
 struct msm_device *pmsm = ctrl_pmsm->pmsm;
 printk("msm_camera: RELEASE %s\n", filep->f_path.dentry->d_name.name);
 rc = __msm_release(pmsm->sync);
 if (!rc) {
  MSM_DRAIN_QUEUE(&ctrl_pmsm->ctrl_q, ctrl_status_q);
  MSM_DRAIN_QUEUE(pmsm->sync, pict_frame_q);
 }
 kfree(ctrl_pmsm);
 return rc;
}
