
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_dev {int memory; } ;


 int memory_access_ok (struct vhost_dev*,int ,int) ;

int vhost_log_access_ok(struct vhost_dev *dev)
{
 return memory_access_ok(dev, dev->memory, 1);
}
