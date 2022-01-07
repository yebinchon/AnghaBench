
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_device {int opened; int sync; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; struct msm_device* private_data; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;


 int __msm_release (int ) ;
 int atomic_set (int *,int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static int msm_release_config(struct inode *node, struct file *filep)
{
 int rc;
 struct msm_device *pmsm = filep->private_data;
 printk("msm_camera: RELEASE %s\n", filep->f_path.dentry->d_name.name);
 rc = __msm_release(pmsm->sync);
 atomic_set(&pmsm->opened, 0);
 return rc;
}
