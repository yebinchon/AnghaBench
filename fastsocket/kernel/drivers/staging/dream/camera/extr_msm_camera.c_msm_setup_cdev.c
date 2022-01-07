
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int owner; } ;
struct msm_device {TYPE_1__ cdev; } ;
struct file_operations {int dummy; } ;
struct device {int dummy; } ;
typedef int dev_t ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int THIS_MODULE ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_init (TYPE_1__*,struct file_operations const*) ;
 struct device* device_create (int ,int *,int ,int *,char*,char const*,int) ;
 int device_destroy (int ,int ) ;
 int msm_class ;
 int pr_err (char*,int) ;

__attribute__((used)) static int msm_setup_cdev(struct msm_device *msm,
   int node,
   dev_t devno,
   const char *suffix,
   const struct file_operations *fops)
{
 int rc = -ENODEV;

 struct device *device =
  device_create(msm_class, ((void*)0),
   devno, ((void*)0),
   "%s%d", suffix, node);

 if (IS_ERR(device)) {
  rc = PTR_ERR(device);
  pr_err("msm_camera: error creating device: %d\n", rc);
  return rc;
 }

 cdev_init(&msm->cdev, fops);
 msm->cdev.owner = THIS_MODULE;

 rc = cdev_add(&msm->cdev, devno, 1);
 if (rc < 0) {
  pr_err("msm_camera: error adding cdev: %d\n", rc);
  device_destroy(msm_class, devno);
  return rc;
 }

 return rc;
}
