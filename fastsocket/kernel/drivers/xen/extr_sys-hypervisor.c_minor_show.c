
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hyp_sysfs_attr {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int HYPERVISOR_xen_version (int ,int *) ;
 int XENVER_version ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t minor_show(struct hyp_sysfs_attr *attr, char *buffer)
{
 int version = HYPERVISOR_xen_version(XENVER_version, ((void*)0));
 if (version)
  return sprintf(buffer, "%d\n", version & 0xff);
 return -ENODEV;
}
