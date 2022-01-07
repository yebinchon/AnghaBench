
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int owner; } ;
struct char_device_struct {int major; struct cdev* cdev; } ;
struct cdev {int kobj; struct file_operations const* ops; int owner; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct char_device_struct*) ;
 int MKDEV (int,unsigned int) ;
 int PTR_ERR (struct char_device_struct*) ;
 struct char_device_struct* __register_chrdev_region (unsigned int,unsigned int,unsigned int,char const*) ;
 int __unregister_chrdev_region (int,unsigned int,unsigned int) ;
 int cdev_add (struct cdev*,int ,unsigned int) ;
 struct cdev* cdev_alloc () ;
 int kfree (int ) ;
 int kobject_put (int *) ;
 int kobject_set_name (int *,char*,char const*) ;

int __register_chrdev(unsigned int major, unsigned int baseminor,
        unsigned int count, const char *name,
        const struct file_operations *fops)
{
 struct char_device_struct *cd;
 struct cdev *cdev;
 int err = -ENOMEM;

 cd = __register_chrdev_region(major, baseminor, count, name);
 if (IS_ERR(cd))
  return PTR_ERR(cd);

 cdev = cdev_alloc();
 if (!cdev)
  goto out2;

 cdev->owner = fops->owner;
 cdev->ops = fops;
 kobject_set_name(&cdev->kobj, "%s", name);

 err = cdev_add(cdev, MKDEV(cd->major, baseminor), count);
 if (err)
  goto out;

 cd->cdev = cdev;

 return major ? 0 : cd->major;
out:
 kobject_put(&cdev->kobj);
out2:
 kfree(__unregister_chrdev_region(cd->major, baseminor, count));
 return err;
}
