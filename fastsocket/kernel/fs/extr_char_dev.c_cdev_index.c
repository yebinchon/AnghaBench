
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct inode {int i_rdev; } ;


 int cdev_map ;
 struct kobject* kobj_lookup (int ,int ,int*) ;
 int kobject_put (struct kobject*) ;

int cdev_index(struct inode *inode)
{
 int idx;
 struct kobject *kobj;

 kobj = kobj_lookup(cdev_map, inode->i_rdev, &idx);
 if (!kobj)
  return -1;
 kobject_put(kobj);
 return idx;
}
