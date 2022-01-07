
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dev_t ;
struct TYPE_4__ {int cdev; } ;


 int MKDEV (int ,int ) ;
 TYPE_1__* cap_devices ;
 int cap_major ;
 int cap_minor ;
 int cap_nr_devs ;
 int cap_trim (TYPE_1__*) ;
 int cdev_del (int *) ;
 int kfree (TYPE_1__*) ;
 int unregister_chrdev_region (int ,int) ;

__attribute__((used)) static void cap_cleanup_module(void)
{
 int i;
 dev_t devno = MKDEV(cap_major, cap_minor);
 if (cap_devices) {
  for (i = 0; i < cap_nr_devs; i++) {
   cap_trim(cap_devices + i);
   cdev_del(&cap_devices[i].cdev);
  }
  kfree(cap_devices);
 }
 unregister_chrdev_region(devno, cap_nr_devs);

}
