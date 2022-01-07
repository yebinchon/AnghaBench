
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hyp_sysfs_attr {int dummy; } ;
typedef int ssize_t ;


 int HYPERVISOR_xen_version (int ,int *) ;
 int XENVER_pagesize ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pagesize_show(struct hyp_sysfs_attr *attr, char *buffer)
{
 int ret;

 ret = HYPERVISOR_xen_version(XENVER_pagesize, ((void*)0));
 if (ret > 0)
  ret = sprintf(buffer, "%x\n", ret);

 return ret;
}
