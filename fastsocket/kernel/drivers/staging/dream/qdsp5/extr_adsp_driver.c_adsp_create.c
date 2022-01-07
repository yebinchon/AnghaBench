
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {int owner; } ;
struct adsp_device {char const* name; struct device* device; TYPE_1__ cdev; int event_queue_lock; int event_queue; int event_wait; } ;
typedef int dev_t ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct device*) ;
 int THIS_MODULE ;
 int adsp_class ;
 int adsp_fops ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_init (TYPE_1__*,int *) ;
 struct device* device_create (int ,struct device*,int ,char*,char const*) ;
 int device_destroy (int ,int ) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void adsp_create(struct adsp_device *adev, const char *name,
   struct device *parent, dev_t devt)
{
 struct device *dev;
 int rc;

 dev = device_create(adsp_class, parent, devt, "%s", name);
 if (IS_ERR(dev))
  return;

 init_waitqueue_head(&adev->event_wait);
 INIT_LIST_HEAD(&adev->event_queue);
 spin_lock_init(&adev->event_queue_lock);

 cdev_init(&adev->cdev, &adsp_fops);
 adev->cdev.owner = THIS_MODULE;

 rc = cdev_add(&adev->cdev, devt, 1);
 if (rc < 0) {
  device_destroy(adsp_class, devt);
 } else {
  adev->device = dev;
  adev->name = name;
 }
}
