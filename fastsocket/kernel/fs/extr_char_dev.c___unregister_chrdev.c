
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct char_device_struct {scalar_t__ cdev; } ;


 struct char_device_struct* __unregister_chrdev_region (unsigned int,unsigned int,unsigned int) ;
 int cdev_del (scalar_t__) ;
 int kfree (struct char_device_struct*) ;

void __unregister_chrdev(unsigned int major, unsigned int baseminor,
    unsigned int count, const char *name)
{
 struct char_device_struct *cd;

 cd = __unregister_chrdev_region(major, baseminor, count);
 if (cd && cd->cdev)
  cdev_del(cd->cdev);
 kfree(cd);
}
