
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct msm_adsp_module {TYPE_1__ pdev; int name; } ;
struct adsp_device {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAJOR (int ) ;
 int MKDEV (int ,unsigned int) ;
 int THIS_MODULE ;
 int adsp_class ;
 int adsp_create (scalar_t__,int ,int *,int ) ;
 unsigned int adsp_device_count ;
 scalar_t__ adsp_devices ;
 int adsp_devno ;
 int alloc_chrdev_region (int *,int ,unsigned int,char*) ;
 int class_create (int ,char*) ;
 int class_unregister (int ) ;
 int kfree (scalar_t__) ;
 scalar_t__ kzalloc (int,int ) ;

void msm_adsp_publish_cdevs(struct msm_adsp_module *modules, unsigned n)
{
 int rc;

 adsp_devices = kzalloc(sizeof(struct adsp_device) * n, GFP_KERNEL);
 if (!adsp_devices)
  return;

 adsp_class = class_create(THIS_MODULE, "adsp");
 if (IS_ERR(adsp_class))
  goto fail_create_class;

 rc = alloc_chrdev_region(&adsp_devno, 0, n, "adsp");
 if (rc < 0)
  goto fail_alloc_region;

 adsp_device_count = n;
 for (n = 0; n < adsp_device_count; n++) {
  adsp_create(adsp_devices + n,
       modules[n].name, &modules[n].pdev.dev,
       MKDEV(MAJOR(adsp_devno), n));
 }

 return;

fail_alloc_region:
 class_unregister(adsp_class);
fail_create_class:
 kfree(adsp_devices);
}
