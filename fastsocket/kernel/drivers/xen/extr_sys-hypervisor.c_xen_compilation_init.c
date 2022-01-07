
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hypervisor_kobj ;
 int sysfs_create_group (int ,int *) ;
 int xen_compilation_group ;

__attribute__((used)) static xen_compilation_init(void)
{
 return sysfs_create_group(hypervisor_kobj, &xen_compilation_group);
}
