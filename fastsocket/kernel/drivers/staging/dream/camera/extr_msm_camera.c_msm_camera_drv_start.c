
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct msm_sync {int list; } ;
struct msm_device {int dummy; } ;


 int CDBG (char*,int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int MSM_MAX_CAMERA_SENSORS ;
 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 int alloc_chrdev_region (int *,int ,int,char*) ;
 scalar_t__ class_create (int ,char*) ;
 int kfree (struct msm_device*) ;
 struct msm_device* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ msm_class ;
 int msm_device_init (struct msm_device*,struct msm_sync*,int) ;
 int msm_devno ;
 int msm_sensors ;
 int msm_sync_destroy (struct msm_sync*) ;
 int msm_sync_init (struct msm_sync*,struct platform_device*,int (*) (struct msm_camera_sensor_info const*,struct msm_sensor_ctrl*)) ;
 int pr_err (char*,...) ;

int msm_camera_drv_start(struct platform_device *dev,
  int (*sensor_probe)(const struct msm_camera_sensor_info *,
   struct msm_sensor_ctrl *))
{
 struct msm_device *pmsm = ((void*)0);
 struct msm_sync *sync;
 int rc = -ENODEV;
 static int camera_node;

 if (camera_node >= MSM_MAX_CAMERA_SENSORS) {
  pr_err("msm_camera: too many camera sensors\n");
  return rc;
 }

 if (!msm_class) {

  rc = alloc_chrdev_region(&msm_devno, 0,
    3 * MSM_MAX_CAMERA_SENSORS,
    "msm_camera");
  if (rc < 0) {
   pr_err("msm_camera: failed to allocate chrdev: %d\n",
    rc);
   return rc;
  }

  msm_class = class_create(THIS_MODULE, "msm_camera");
  if (IS_ERR(msm_class)) {
   rc = PTR_ERR(msm_class);
   pr_err("msm_camera: create device class failed: %d\n",
    rc);
   return rc;
  }
 }

 pmsm = kzalloc(sizeof(struct msm_device) * 3 +
   sizeof(struct msm_sync), GFP_ATOMIC);
 if (!pmsm)
  return -ENOMEM;
 sync = (struct msm_sync *)(pmsm + 3);

 rc = msm_sync_init(sync, dev, sensor_probe);
 if (rc < 0) {
  kfree(pmsm);
  return rc;
 }

 CDBG("setting camera node %d\n", camera_node);
 rc = msm_device_init(pmsm, sync, camera_node);
 if (rc < 0) {
  msm_sync_destroy(sync);
  kfree(pmsm);
  return rc;
 }

 camera_node++;
 list_add(&sync->list, &msm_sensors);
 return rc;
}
