
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int dummy; } ;
typedef int dev_t ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 int bdi_register (struct backing_dev_info*,int *,char*,int ,int ) ;

int bdi_register_dev(struct backing_dev_info *bdi, dev_t dev)
{
 return bdi_register(bdi, ((void*)0), "%u:%u", MAJOR(dev), MINOR(dev));
}
