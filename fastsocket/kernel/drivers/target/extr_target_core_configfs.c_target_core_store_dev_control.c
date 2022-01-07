
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_subsystem_api {int (* set_configfs_dev_params ) (struct se_device*,char const*,size_t) ;} ;
struct se_device {struct se_subsystem_api* transport; } ;
typedef int ssize_t ;


 int stub1 (struct se_device*,char const*,size_t) ;

__attribute__((used)) static ssize_t target_core_store_dev_control(
 void *p,
 const char *page,
 size_t count)
{
 struct se_device *dev = p;
 struct se_subsystem_api *t = dev->transport;

 return t->set_configfs_dev_params(dev, page, count);
}
