
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl_status_wait; int ctrl_status_q; int ctrl_status_q_lock; } ;
struct msm_control_device {TYPE_1__ ctrl_q; struct msm_control_device* pmsm; } ;
struct inode {int dummy; } ;
struct file {struct msm_control_device* private_data; } ;


 int CDBG (char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 struct msm_control_device* kmalloc (int,int ) ;
 int msm_open_common (struct inode*,struct file*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int msm_open_control(struct inode *inode, struct file *filep)
{
 int rc;

 struct msm_control_device *ctrl_pmsm =
  kmalloc(sizeof(struct msm_control_device), GFP_KERNEL);
 if (!ctrl_pmsm)
  return -ENOMEM;

 rc = msm_open_common(inode, filep, 0);
 if (rc < 0)
  return rc;

 ctrl_pmsm->pmsm = filep->private_data;
 filep->private_data = ctrl_pmsm;
 spin_lock_init(&ctrl_pmsm->ctrl_q.ctrl_status_q_lock);
 INIT_LIST_HEAD(&ctrl_pmsm->ctrl_q.ctrl_status_q);
 init_waitqueue_head(&ctrl_pmsm->ctrl_q.ctrl_status_wait);

 CDBG("msm_open() open: rc = %d\n", rc);
 return rc;
}
