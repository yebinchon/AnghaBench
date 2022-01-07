
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_subsystem_api {int (* show_configfs_dev_params ) (struct se_device*,char*) ;} ;
struct se_device {struct se_subsystem_api* transport; } ;
typedef int ssize_t ;


 int stub1 (struct se_device*,char*) ;
 int transport_dump_dev_state (struct se_device*,char*,int*) ;

__attribute__((used)) static ssize_t target_core_show_dev_info(void *p, char *page)
{
 struct se_device *dev = p;
 struct se_subsystem_api *t = dev->transport;
 int bl = 0;
 ssize_t read_bytes = 0;

 transport_dump_dev_state(dev, page, &bl);
 read_bytes += bl;
 read_bytes += t->show_configfs_dev_params(dev, page+read_bytes);
 return read_bytes;
}
